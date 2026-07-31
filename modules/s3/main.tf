locals {
  bucket_name = "${var.surname}${var.initials}-${var.resource}-${var.environment}"
}

resource "aws_s3_bucket" "archive" {
  bucket = local.bucket_name
}