variable "repository_name" {
  type = string
}

resource "aws_ecr_repository" "repository" {
  name = var.repository_name
}
