SHELL:=/bin/bash
include .env

.PHONY: all clean test docs format

all: test docs format

clean:
	rm -rf .terraform/

validate:
	$(TERRAFORM) init && $(TERRAFORM) validate && \
		$(TERRAFORM) -chdir=modules/bastion init && $(TERRAFORM) -chdir=modules/bastion validate

test: validate
	$(CHECKOV) -d /work
	$(TFSEC) /work

docs:
	$(TERRAFORM_DOCS) markdown ./ >./README.md && \
		$(TERRAFORM_DOCS) markdown ./modules/bastion >./modules/bastion/README.md

format:
	$(TERRAFORM) fmt -list=true ./ && \
		$(TERRAFORM) fmt -list=true ./modules/bastion
