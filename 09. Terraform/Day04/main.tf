provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "my-ec2" {
    count = var.instance_count
    ami = var.instance_ami
    instance_type = var.instance_type
    tags = {
        Name = "${var.instance_name}-${count.index + 1}"
    }
}