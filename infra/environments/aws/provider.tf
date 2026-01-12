terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # Remote state (אופציונלי) - הפעל אחרי שתיצור bucket + dynamodb
  # backend "s3" {
  #   bucket         = "YOUR_TFSTATE_BUCKET"
  #   key            = "aws/prod/terraform.tfstate"
  #   region         = "eu-west-1"
  #   dynamodb_table = "YOUR_TFSTATE_LOCK_TABLE"
  #   encrypt        = true
  # }
}

provider "aws" {
  region = var.region
}
