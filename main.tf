provider "aws" {
  region = "ap-south-1"
}

resource "random_id" "suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "gitops_demo" {
  bucket = "gitops-project18-demo-${random_id.suffix.hex}"
}

resource "aws_s3_bucket_versioning" "versioning_demo" {
  bucket = aws_s3_bucket.gitops_demo.id
  versioning_configuration {
    status = "Enabled"
  }
}
