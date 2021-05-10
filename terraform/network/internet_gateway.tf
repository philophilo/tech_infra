resource "aws_internet_gateway" "tech_igw" {
    vpc_id = "${aws_vpc.tech_vpc.id}"
    tags {
        Name = "${var.aws_tag}"
    }
}
