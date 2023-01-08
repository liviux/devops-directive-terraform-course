terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0a261c0e5f51090b1" # Ubuntu 20.04 LTS // us-east-1
  instance_type = "t2.micro"
}
