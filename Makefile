# install packer
install_packer:
	@brew install packer

build_image: .env
	@. .env
	@packer build script.json

# run terraform
plan:
	@ls -l ./terraform/
	@cd ./terraform/ && \
	    terraform init -backend-config=key=terraform.tfstate && \
	    terraform plan

infra:
	@ls -l ./terraform/
	@cd ./terraform/ && \
	    terraform apply -auto-approve
