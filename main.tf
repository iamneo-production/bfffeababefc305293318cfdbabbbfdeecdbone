terraform {
  required_version = ">= 0.12"
  required_providers {
    acme = ">= version"
    aws = {
        source = "hashicorp/aws"
    }
  }
  
}

provider "aws" {
    region = "Singapore"
    access_key ="AKIASGOFNFJT4AE6IVZP"
    secret_key = "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"
}

resource "aws_instance" "linux_server"{
     ami = var.ami
     instance_type = var.instance_type
}



