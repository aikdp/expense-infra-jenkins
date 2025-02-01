terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
    backend "s3" {  #need to create manually in AWS, then use here
        bucket         	   = "vpc-module-rs"
        key                = "expense-jenkins-vpc"
        region         	   = "us-east-1"
        dynamodb_table = "expense-jenkins-lock"
    }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}  
