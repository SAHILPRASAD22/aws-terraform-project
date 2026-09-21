locals {
  project_name = "aws-terraform-project"
  environment  = "dev"

  common_tags = {
    Project     = "AWS Terraform Project"
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}
