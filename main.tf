// Add necessary AWS provider

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}


// Configure the AWS Provider with necessary data
provider "aws" {
  region = var.region
}
