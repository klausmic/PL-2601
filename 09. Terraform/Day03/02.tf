provider "aws" {
    region = "ap-south-1"
}
variable "az_list" {
    type = list(string)
    default = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
}
output "az_count" {
    value = element(var.az_list, 0)
}