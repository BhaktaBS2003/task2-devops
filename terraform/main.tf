provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-tfsec-test-bucket-${random_id.bucket.hex}"
  force_destroy = true
}

resource "random_id" "bucket" {
  byte_length = 4
}

