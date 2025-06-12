output "instance_public_ip" {
  value = aws_instance.node_app.public_ip
}

output "ssh_command" {
  value = "ssh -i ~/.ssh/id_rsa ubuntu@${aws_instance.node_app.public_ip}"
}

output "app_url" {
  value = "http://${aws_instance.node_app.public_ip}:${var.app_port}"
}

