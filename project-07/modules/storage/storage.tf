// module for s3 bucket
resource "aws_s3_bucket" "bucket01" {
  bucket = "${var.bucket_name[0]}"
  force_destroy = true
}

resource "aws_s3_bucket_acl" "acl01" {
  bucket = aws_s3_bucket.bucket01.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.bucket01.id
  versioning_configuration {
    status = "Enabled"
  }
}
resource "aws_s3_bucket_server_side_encryption_configuration" "example" {
  bucket = aws_s3_bucket.bucket01.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "AES256"
    }
  }
}