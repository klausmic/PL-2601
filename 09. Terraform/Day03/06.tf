provider "aws" {
    region = "ap-south-1"
}
variable "ec2_tags" {
    type = map(string)
    default = {
        Name = "Kastro-Server"
        Environment = "Production"
    }
}
output "environment_name" {
    value = lookup(var.ec2_tags, "Environment")
}