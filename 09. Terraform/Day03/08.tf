provider "aws" {
    region = "ap-south-1"
}
variable "roles" {
    type = set(string)
    default = ["Admin", "Developer", "Tester", "DevOps", "Admin", "Tester"]
}
output "unique_values" {
    value = tolist(var.roles)
}