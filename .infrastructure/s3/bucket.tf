resource "aws_s3_bucket" "js-hello-world" {
  bucket = "${var.bucket_name}"
  force_destroy = false

  tags = {
    Name = "js-hello-world"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "js-hello-world_acl" {
    bucket = aws_s3_bucket.js-hello-world.id
    acl = var.acl_value
}

resource "aws_s3_bucket_versioning" "js-hello-world_versioning" {
    bucket = aws_s3_bucket.js-hello-world.id
    versioning_configuration {
      status = "Enabled"
    }
}