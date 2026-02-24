provider "aws" {
    region = "ap-south-1"
}
resource "aws_instance" "my-ec2" {
    ami = "ami-051a31ab2f4d498f5"
    instance_type = "t2.micro"

    tags = {
        Name = "dev-server"
    }
}

resource "aws_s3_bucket" "my-bucket" {
    bucket = "my-unique-bucket-name-12345"
}