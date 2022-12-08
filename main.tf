terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}
resource "aws_instance" "autoamtion_ins" {
  ami           = "ami-089a545a9ed9893b6"
  instance_type = "t2.micro"
  key_name      = "********"
  count         = "1"
}
