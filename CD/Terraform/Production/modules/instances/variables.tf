variable "vpc_id" {}
variable "private_subnet_1_id" {}
variable "private_subnet_2_id" {}
variable "private_subnet_3_id" {}
variable "private_subnet_4_id" {}
variable "public_subnet_id" {}

variable "ami" {
  type    = string
  default = "ami-03f65b8614a860c29"
}

variable "instance_type" {
  type    = string
  default = "t2.medium"
}

variable "key_name" {
  type    = string
  default = "vockey"
}
