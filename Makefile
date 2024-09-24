.PHONY: all codegen clean

SHELL := BASH_ENV=.rc /bin/bash --noprofile

OPENAPI_CODEGEN_VERSION?=v7.8.0
OPENAPI_CODEGEN_IMAGE?=openapitools/openapi-generator-cli

OPSGENIE_OPENAPI_SPEC_REPO?=git@github.com:bougar/opsgenie-oas.git
OPSGENIE_OPENAPI_SPEC_VERSION?=master
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
