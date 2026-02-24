provider "aws" {
    region = "ap-south-1"
}
resource "aws_instance" "protected_instance" {
    ami = "ami-0c94855ba95c71c99"
    instance_type = "t2.micro"
    tags = {
        Name = "ProtectedInstance"
    }
    lifecycle {
    prevent_destroy = true
    }
}

