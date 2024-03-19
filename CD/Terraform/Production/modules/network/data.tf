data "aws_vpc" "vpc_peer" {
  tags = {
    Name = "vpc_a"
  }
}
