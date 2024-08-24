# terraform {
#   backend "s3" {
#     bucket         = "akarshkn-ews-bkt1"
#     region         = "us-east-1"
#     key            = "Full-CICD-Pipeline-1/Jenkins-Server-TF/terraform.tfstate"
#     dynamodb_table = "Lock-Files"
#     encrypt        = true
#   }
#   required_version = ">=0.13.0"
#   required_providers {
#     aws = {
#       version = ">= 2.7.0"
#       source  = "hashicorp/aws"
#     }
#   }
# }


# resource "aws_dynamodb_table" "terraform_lock" {
#   name         = "terraform-state-lock"
#   billing_mode = "PAY_PER_REQUEST"

#   hash_key = "LockID"

#   attribute {
#     name = "LockID"
#     type = "S"
#   }
# }