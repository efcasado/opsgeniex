.PHONY: allcodegen clean

SHELL := BASH_ENV=.rc /bin/bash --noprofile

UNAME_S := $(shell uname -s)

# Set the appropriate sed command based on the OS
ifeq ($(UNAME_S),Darwin)
    SED_INPLACE := sed -i ''
else
    SED_INPLACE := sed -i
endif

OPENAPI_CODEGEN_VERSION?=v7.8.0
OPENAPI_CODEGEN_IMAGE?=openapitools/openapi-generator-cli

SWAGGER_MERGE_IMAGE?=properdom/swagger-merger
SWAGGER_MERGE_VERSION?=latest

OPSGENIE_OPENAPI_SPEC_REPO?=git@github.com:opsgenie/opsgenie-oas.git
OPSGENIE_OPENAPI_SPEC_VERSION?=v1.0.0
OPSGENIE_OPENAPI_SPEC_DIR?=opsgenie-oas

all: codegen build

opsgenie-oas:
	git clone ${OPSGENIE_OPENAPI_SPEC_REPO} --branch ${OPSGENIE_OPENAPI_SPEC_VERSION} --depth 1

opsgenie-oas/swagger.json:
	cd ${OPSGENIE_OPENAPI_SPEC_DIR}/multi-file-swagger && npm install
	cd ${OPSGENIE_OPENAPI_SPEC_DIR} && ./multi-file-swagger/index.js -- swagger.yaml > swagger.json


codegen: $(OPSGENIE_OPENAPI_SPEC_DIR) $(OPSGENIE_OPENAPI_SPEC_DIR)/swagger.json
	@docker run --rm -v "${PWD}:/local" ${OPENAPI_CODEGEN_IMAGE}:${OPENAPI_CODEGEN_VERSION} generate \
		-i /local/opsgenie-oas/swagger.json \
		--skip-validate-spec \
		-g elixir \
		--additional-properties=packageName=opsgeniex \
		--additional-properties=invokerPackage=Opsgeniex \
		-o /local/out/elixir
	mv out/elixir/lib/* lib/
	mv out/elixir/mix.exs .
	#find lib -type f -name "*.ex" -o -name "*.md" -o -name "*.exs" -exec $(SED_INPLACE) 's/ops_genie_restapi/opsgeniex/g' {} +
	#find lib -type f -name "*.ex" -o -name "*.md" -o -name "*.exs" -exec $(SED_INPLACE) 's/OpsGenieRESTAPI/Opsgeniex/g' {} +
	#$(SED_INPLACE) 's/ops_genie_restapi/opsgeniex/g' mix.exs
	#$(SED_INPLACE) 's/OpsGenieRESTAPI/Opsgeniex/g' mix.exs
	#mv lib/ops_genie_restapi lib/opsgeniex
	
build:
	mix deps.get
	mix compile

clean:
	mix clean --all
	mix deps.clean --all

	rm -rf ${OPSGENIE_OPENAPI_SPEC_DIR}
	rm -rf lib/*
	rm -rf out
	rm -f .openapi-generator-ignore
	rm -rf _build
	rm -rf doc
