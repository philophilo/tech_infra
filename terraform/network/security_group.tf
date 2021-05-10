resource "aws_security_group" "tech_sg" {
    name = "tech_sg"
    tags {
        Name = "tech_sg"
    }
    description = "Connections for the api"
    vpc_id = "${aws_vpc.tech_vpc.id}"
    ingress {
        from_port   = "80"
        to_port     = "80"
        protocol    = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port   = "443"
        to_port     = "443"
        protocol    = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port   = "8080"
        to_port     = "8080"
        protocol    = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port   = "8787"
        to_port     = "8787"
        protocol    = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port   = "22"
        to_port     = "22"
        protocol    = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port   = "-1"
        to_port     = "-1"
        protocol    = "ICMP"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
