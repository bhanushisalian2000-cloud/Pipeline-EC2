terraform {
  backend "s3" {
    bucket = "terraform-state-593737766945-ap-south-1-an"
    key    = "terraform-infra/terraform.tfstate"
    region = "ap-south-1"
  }
}

provider "aws" {
  region = "ap-south-1"
}