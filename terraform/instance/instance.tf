resource "aws_instance" "tech_instance" {
    ami           = "${data.aws_ami.tech_ami.id}"
    instance_type = "${var.instance_type}"
    associate_public_ip_address = "false"
    subnet_id = "${var.subnet_id}"
    vpc_security_group_ids = ["${var.tech_sg_id}"]
    key_name = "${var.key_name}"
    associate_public_ip_address = "true"
    tags {
        Name = "${var.aws_tag}"
    }
}
