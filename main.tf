terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

resource "aws_instance" "state_svr" {
  ami           = "ami-04a81a99f5ec58529" # Exemplo de Amazon Linux 2023 em us-east-1
  instance_type = "t3.micro"

  tags = {
    Name = "human-gov-${var.state_name}"
  }
}
