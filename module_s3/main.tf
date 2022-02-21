resource "aws_s3_bucket" "s3" {
  bucket = format("%s.%s", var.bucket_name, var.expiry)
  lifecycle_rule {
    id      = format("Remove after - %s days", var.dayslist)
    enabled = true
    expiration {
      days = var.dayslist
    }
  }
  versioning  {
    enabled = true
  }


  acl = "private"
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

