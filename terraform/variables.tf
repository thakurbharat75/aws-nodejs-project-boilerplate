variable "aws_region" {
  default = "us-east-1"
}

variable "ami_id" {
  default = "ami-0c02fb55956c7d316" # Ubuntu 22.04 in us-east-1
}

variable "instance_type" {
  default = "t2.micro"
}

variable "public_key_path" {
  description = "Path to your public SSH key"
  default     = "~/.ssh/id_rsa.pub"
}

variable "docker_image" {
  description = "Docker image to run"
}

variable "app_port" {
  default = 3000
}

