terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.25.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.5.1"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.4"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3.2"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.23.0"
    }
  }

  backend "s3" {
    bucket = "gitops2003"
    key    = "terraform.tfstate"
<<<<<<< HEAD
    region = "us-east-1"
=======
    region = "us-east-1"
>>>>>>> e8d4b8d (Initial commit - added Terraform configurations and GitHub Actions workflow)
  }

  required_version = "~> 1.6.3"
}
##
##
##
