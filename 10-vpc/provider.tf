terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.24.0"
    }
  }

  backend "s3" {
    bucket         = "81s-remote-state-kasineni"
    key            = "expense-vpc" # every repo should contain unique key
    region         = "us-east-1"
    dynamodb_table = "81s-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}