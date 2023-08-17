remote_state {
  backend = "s3"
  generate = {
    path = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    bucket = "iac-aws-tfstate"
    key = "${path_relative_to_include()}/terraform.tfstate"
    region = "ap-northeast-1"
    encrypt = true
    disable_bucket_update = true
    dynamodb_table = "iac-aws-common-lock-table"
  }
}

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
    terraform {
      required_version = "= 1.5.5"
      required_providers {
        aws = {
          version = "~> 5.0"
        }
      }
    }

    provider "aws" {
      default_tags {
        tags = {
          Project = "iac-aws-common"
        }
      }
    }
  EOF
}