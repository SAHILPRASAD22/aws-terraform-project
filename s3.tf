resource "aws_s3_bucket" "terraform_bucket" {
  bucket = "sahil-terraform-demo-2026"

  tags = merge(local.common_tags, {
    Name = "terraform-s3-bucket"
  })
}
