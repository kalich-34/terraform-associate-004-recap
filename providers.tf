terraform {
  required_version = "1.15.7"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  cloud {
    
    organization = "kalich-org"

    workspaces {
      name = "tranning"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}