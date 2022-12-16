terraform {
backend  = "http" {
address = "https://eu3-smax.saas.microfocus.com/iac-controller/v1/506666606/terraform/statejp/backend"
lock_address = "https://eu3-smax.saas.microfocus.com/iac-controller/v1/506666606/terraform/statejp/lock"
unlock_address = "https://eu3-smax.saas.microfocus.com/iac-controller/v1/506666606/terraform/statejp/lock"
lock_method = "POST"
unlock_method ="DELETE"
username = "jean-patrick.kong@microfocus.com"
password = "Automation_123"
skip_cert_verification = "true"
}
address= "https://
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
