resource "aws_route_table" "tech_public_rt" {
    vpc_id = "${aws_vpc.tech_vpc.id}"
    tags {
        Name = "${var.aws_tag}"
    }

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.tech_igw.id}"
    }
    
}

resource "aws_route_table_association" "tech_public_rta" {
  subnet_id               = "${aws_subnet.tech_public_subnet_aza.id}"
  route_table_id          = "${aws_route_table.tech_public_rt.id}"
}
