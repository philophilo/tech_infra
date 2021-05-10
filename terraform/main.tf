provider "aws" {
    region = "${var.aws_region}"
    shared_credentials_file = "${var.aws_credentials}"
    version = "v2.70.0"
}

terraform {
  backend "s3" {
    bucket = "tech-state"
    region = "us-east-1"
  }
}

module "network" {
    source = "./network"

    aws_tag = "${var.aws_tag}"
    aza = "${var.aza}"
    azb = "${var.azb}"
    subnet_public_aza_cidr = "${var.subnet_public_aza_cidr}"
    subnet_public_azb_cidr = "${var.subnet_public_azb_cidr}"
    subnet_private_aza_cidr = "${var.subnet_private_aza_cidr}"
    subnet_private_azb_cidr = "${var.subnet_private_azb_cidr}"
    vpc_fullcidr = "${var.vpc_fullcidr}"
}

module "instance" {
    source = "./instance"

    key_name = "${var.key_name}"
    aws_tag = "${var.aws_tag}"
    aws_account = "${var.aws_account}"
    instance_type = "${var.instance_type}"
    tech_sg_id = "${module.network.security_group_id}"
    subnet_id = "${module.network.subnet_id}"
}

