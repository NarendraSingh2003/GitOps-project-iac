terraform {
  required_version = "= 1.6.3"  # Exact version match

  backend "s3" {
    bucket         = "gitops2003"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"  # Recommended for state locking
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0"  # Pinned version for AWS provider
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.23.0"  # Pinned version for Kubernetes provider
    }
  }
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      Environment = "stage"
      ManagedBy   = "terraform"
    }
  }
}