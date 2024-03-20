terraform {
  backend "s3" {
    bucket = "tfstate-872290481719"
    key = "core"
    region = "ap-south-1"
  }
}
provider "aws" {
  region = "ap-south-1"
}