.PHONY: all clean codegen
.PHONE: deps compile shell

SHELL := BASH_ENV=.rc /bin/bash --noprofile

OPENAPI_CODEGEN_VERSION?=v7.8.0
OPENAPI_CODEGEN_IMAGE?=openapitools/openapi-generator-cli

OPSGENIE_OPENAPI_SPEC_REPO?=git@github.com:bougar/opsgenie-oas.git
OPSGENIE_OPENAPI_SPEC_VERSION?=master
OPSGENIE_OPENAPI_SPEC_DIR?=opsgenie-oas

## Main targets
##=========================≈===============================================

all: compile

deps: codegen
	mix deps.get

compile: deps
	mix compile

shell:
	iex -S mix

clean:
	mix clean --all
	mix deps.clean --all

	rm -rf ${OPSGENIE_OPENAPI_SPEC_DIR}
	rm -rf lib/*
	rm -rf out
	rm -f .openapi-generator-ignore
	rm -rf _build
	rm -rf doc
	rm -f opsgenie-oas.yaml


## OpenAPI targets
##=========================≈===============================================

codegen: lib/opsgeniex

lib/opsgeniex: $(OPSGENIE_OPENAPI_SPEC_DIR) opsgenie-oas.yaml
	@docker run --rm -v "${PWD}:/local" ${OPENAPI_CODEGEN_IMAGE}:${OPENAPI_CODEGEN_VERSION} generate \
		-i local/opsgenie-oas.yaml \
		-g elixir \
		--additional-properties=packageName=opsgeniex \
		--additional-properties=invokerPackage=Opsgeniex \
		-o /local/out/elixir
	mv out/elixir/lib/* lib/
	mv out/elixir/mix.exs .

opsgenie-oas:
	git clone ${OPSGENIE_OPENAPI_SPEC_REPO} --branch ${OPSGENIE_OPENAPI_SPEC_VERSION} --depth 1

opsgenie-oas/swagger.json: opsgenie-oas
	cd ${OPSGENIE_OPENAPI_SPEC_DIR}/multi-file-swagger && npm install
	cd ${OPSGENIE_OPENAPI_SPEC_DIR} && ./multi-file-swagger/index.js -- swagger.yaml > swagger.json

opsgenie-oas.yaml: $(OPSGENIE_OPENAPI_SPEC_DIR)/swagger.json
	curl -XPOST https://converter.swagger.io/api/convert \
		--data-binary @opsgenie-oas/swagger.json \
		-H "Content-Type: application/json" \
		-H "Accept: application/yaml" > opsgenie-oas.yaml