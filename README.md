# tech_infra

#### requirements
- packer
- ansible
- terraform

#### Setup


Add the following variables to `.env` file in the root directory

```
export aws_access_key=""
export aws_secret_access=""
export aws_region=""
export vpc_id=""
export vpc_public_sn_id=""

```


Add the following variables to `terraform.tfvars` file in terraform/ folder

```
aws_credentials="path-to-credentials file"
aws_region=""
aws_state=""
aws_tag=""
aza=""
azb=""
subnet_public_aza_cidr=""
subnet_public_azb_cidr=""
subnet_private_aza_cidr=""
subnet_private_azb_cidr=""
aws_account=""
instance_type=""
vpc_fullcidr=""
key_name=""
```

#### Make commands
- `make install_packer` install packer
- `make build_image` build AMI with packer and ansible
- `make plan` get terraform plan
- `make infra` create infrastructure with terraform

#### Use terraform


#### access
- [jenkins](http://54.166.8.2:8080/)
- [api](http://54.166.8.2:8787/)
