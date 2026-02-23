variable "ami_id" {
    description = "AMI ID for EC2 instance"
    type = string
}

variable "instance_type" {
  description = "Type of EC2 Instance"
  type = string
}

variable "instance_name" {
    description = "Name of the instance"
    type = string
}