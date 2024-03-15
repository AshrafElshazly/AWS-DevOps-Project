resource "aws_instance" "master_server" {
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = "vockey"
  subnet_id                   = var.public_subnet_id
  vpc_security_group_ids      = [aws_security_group.master_server_sg.id]
  associate_public_ip_address = true
  tags = {
    Name = "mgmt_server"
  }
  user_data = file(var.userdata)
}
