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
    access_key =""
    secret_key = ""
}

