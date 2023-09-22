terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
    }
  }
  
}

provider "aws" {
    region = "ap-southeast-1"
    access_key ="AKIASGOFNFJT4AE6IVZP"
    secret_key = "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"
}

resource "aws_instance" "demo-instance"{
     ami = var.ami
     instance_type = var.instance_type
}

output "public_ip" {
  value  = aws_instance.demo-instance.public_ip
}




