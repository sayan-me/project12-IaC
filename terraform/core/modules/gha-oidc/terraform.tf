variable "env" {
  type = string
  description = "environment type"
}
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.41.0"
    }
  }
}
provider "aws" {
  default_tags {
    tags = {
      "create-by" = "terraform"
      "tf-module" = "gha-oidc"
      "for" = "project12-IaC"
      "env" = var.env
    }
  }
}