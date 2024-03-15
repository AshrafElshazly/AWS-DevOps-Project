variable "vpc_id" {}

variable "public_subnet_id" {}

variable "ami" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "userdata" {
  type = string
}
