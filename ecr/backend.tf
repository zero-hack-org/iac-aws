# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "s3" {
    bucket         = "iac-aws-common-tfstate"
    dynamodb_table = "common-lock-table"
    encrypt        = true
    key            = "ecr/terraform.tfstate"
    region         = "ap-northeast-1"
  }
}