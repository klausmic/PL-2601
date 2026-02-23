provider "aws" {
    region = "ap-south-1"
}
variable "public_subnets" {
  type = list(string)
  default = ["public-subnet-1a", "public-subnet-1b"]
}
variable "private_subnets" {
  type = list(string)
  default = ["private-subnet-1a", "private-subnet-1b"]
}
output "all_subnets" {
    value = concat(var.public_subnets, var.private_subnets)
}