provider "aws" {
    region = "ap-south-1"
}
variable "tag_keys" {
    type = list(string)
    default = ["Name", "Environment", "App-Name"]
}
variable "tag_values" {
  type = list(string)
  default = ["MyEC2", "dev-env", "Swiggy"]
}
output "ec2_tags" {
    value = zipmap(var.tag_keys, var.tag_values)
}