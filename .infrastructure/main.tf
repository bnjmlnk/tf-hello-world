terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "remote" {
    organization = "bm-sandbox"
    workspaces {
      name = "hello-world"
    }
  }
}

/* provider "aws" {
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
  token      = var.AWS_SESSION_TOKEN
  region     = var.region
} */

module "s3" {
  source      = "./s3"
  bucket_name = "js-hello-world"
}
