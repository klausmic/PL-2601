provider "aws" {
    region = "ap-south-1"
}
variable "iam_users" {
    type = list(string)
    default = [ "kastro", "kiran", "krishna" ]
}
output "user_string" {
    value = join(",", var.iam_users)
}