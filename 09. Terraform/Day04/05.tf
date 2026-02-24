provider "aws" {
    alias = "ap-south-1"
    region = "ap-south-1"
}

provider "aws" {
    alias = "us-east-1"
    region = "us-east-1"
}

resource "aws_instance" "my-ec2-ap-south-1" {
    provider = aws.ap-south-1
    ami = "ami-051a31ab2f4d498f5"
    instance_type = "t2.micro"
    tags = {
        Name = "ap-south-1-server"
    }
}

resource "aws_instance" "my-ec2-us-east-1" {
    provider = aws.us-east-1
    ami = "ami-0f3caa1cf4417e51b"
    instance_type = "t2.micro"
    tags = {
        Name = "us-east-1-server"
    }
}