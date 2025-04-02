terraform {
  required_version = "= 1.6.3"  # MUST use exact version match

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
      version = "5.31.0"  # Pinned version known to work with TF 1.6.3
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.23.0"
    }
  }
}