resource "aws_subnet" "tech_public_subnet_aza" {
    vpc_id = "${aws_vpc.tech_vpc.id}"
    cidr_block = "${var.subnet_public_aza_cidr}"
    map_public_ip_on_launch = true
    tags {
        Name = "${var.aws_tag}"
    }
    availability_zone = "${var.aza}"
}
