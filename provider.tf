terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.58.0"
    }
  }

  #uncomment this if your user has permissions for s3 buckets. It should enable multiple work to be done by other devs at the same time
  #backend "s3" {
  #  bucket         = "terraform-state-bucket"
  #  key            = "dev/terraform.tfstate"
  #  region         = "us-east-1"
  #  encrypt        = true
  #}
}

provider "aws" {
  region = "us-east-1"
}