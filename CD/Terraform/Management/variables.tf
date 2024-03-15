#Region Name
variable "region" {
  type = string
}

#Networks
variable "az" {
  type = string
}

#App EC2
variable "ami" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "userdata" {
  type = string
}

#ECR
variable "repository_name" {
  type = string
}
