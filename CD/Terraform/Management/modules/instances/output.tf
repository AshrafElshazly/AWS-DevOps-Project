output "master_public_ip" {
  value = aws_instance.master_server.public_ip
}
