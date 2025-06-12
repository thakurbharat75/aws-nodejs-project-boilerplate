output "instance_public_ip" {
  value = aws_instance.node_app.public_ip
}

output "ssh_command_for_your_server" {
  value = "ssh -i ~/.ssh/id_rsa ubuntu@${aws_instance.node_app.public_ip}"
}

output "your_app_url" {
  value = "http://${aws_instance.node_app.public_ip}:${var.app_port}"
}

