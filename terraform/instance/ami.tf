data "aws_ami" "tech_ami" {
    most_recent = true
    owners = ["${var.aws_account}"]
    tags = {
        role = "testz"
    }
}
