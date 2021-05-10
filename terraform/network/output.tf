output "security_group_id" {
    value = "${aws_security_group.tech_sg.id}"
}

output "subnet_id" {
    value = "${aws_subnet.tech_public_subnet_aza.id}"
}
