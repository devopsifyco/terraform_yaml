.DEFAULT_GOAL := help # Default target
TERRAFORM_OK := $(shell type -p terraform 2>&1) #Check terraform installed
GENERATE_VAR_OK := $(shell type -p scratchrelaxtv 2>&1) #Check scratchrelaxtv installed
TFENV_OK := $(shell type -p tfenv 2>&1) #Check tfenv installed
TFDOCS_OK := $(shell type -p terraform-docs 2>&1) #Check tfenv installed
NODE_OK := $(shell type -p node 2>&1) #Check nodejs installed

help:
	@echo "Usage: make [args]"
	@echo "Other commands: "
	@echo " * make check    	   -  dependency check is installed. "
	@echo " * make tfver    	   -  check version terraform. "
	@echo " * make tfver ver=x.x.x -  switch version terraform. "
	@echo " * make lint    		   -  lint code terraform. "
	@echo " * make docs    		   -  generate documentation from Terraform modules in README.md. "
	@echo " * make genvar  		   -  extract variables from main.tf and generate a variables.tf file. "
	@echo " * make genvar/tfvars   -  generate .tfvars with Terraform vars. "
	@echo " * make genmodule       -  scaffolding/boilerplate generator for new Terraform module projects. "


check: Terraform-exists Scratchrelaxtv-exists TFenv-exists TFdocs-exists Node-exists Generator-tf-module-exists
Terraform-exists:
	@if [ -z $(TERRAFORM_OK) ]; then echo "terraform could not be found. "; exit 2; fi
Scratchrelaxtv-exists:
	@if [ -z $(GENERATE_VAR_OK) ]; then echo "scratchrelaxtv could not be found. See https://github.com/YakDriver/scratchrelaxtv"; exit 2; fi
TFenv-exists:
	@if [ -z $(TFENV_OK) ]; then echo "tfenv could not be found. See https://github.com/tfutils/tfenv"; exit 2; fi
TFdocs-exists:
	@if [ -z $(TFDOCS_OK) ]; then echo "terraform-docs could not be found. See https://github.com/terraform-docs/terraform-docs "; exit 2; fi
Node-exists:
	@if [ -z $(NODE_OK) ]; then echo "node could not be found. See https://nodejs.org/en/download/ "; exit 2; fi

lint:
	terraform fmt -recursive .

genvar:
	scratchrelaxtv -cf
genvar/tfvars:
	scratchrelaxtv -t

docs:
	terraform-docs markdown table --output-file README.md --output-mode inject .

.PHONY: tfver
tfver:
	tfenv install $(ver) && tfenv use $(ver) && terraform -v

genmodule:
	npx -p yo -p generator-tf-module -c 'yo tf-module'