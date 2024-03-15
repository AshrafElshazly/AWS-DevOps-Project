resource "aws_instance" "app1" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  user_data     = "./userdata.sh"
  network_interface {
    network_interface_id = aws_network_interface.app_1_interface.id
    device_index         = 0
  }
  tags = {
    Name = "app1"
  }
}

resource "aws_instance" "app2" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  user_data     = "./userdata.sh"
  network_interface {
    network_interface_id = aws_network_interface.app_2_interface.id
    device_index         = 0
  }
  tags = {
    Name = "app2"
  }
}
