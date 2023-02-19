terraform {
backend  "http" {
address = "https://us1-smax.saas.microfocus.com/iac-controller/v1/393740922/terraform/Workspace1/backend"
lock_address = "https://us1-smax.saas.microfocus.com/iac-controller/v1/393740922/terraform/Workspace1/backend/lock"
unlock_address = "https://us1-smax.saas.microfocus.com/iac-controller/v1/393740922/terraform/Workspace1/backend/lock"
lock_method = "POST"
unlock_method ="DELETE"
username = "jean-patrick.kong@microfocus.com"
password = "Automation.123"
skip_cert_verification = "true"
}
  required_version = "~> 1.0" 
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}


provider "aws" {
  region = var.aws_region
  #profile = "default"
}
