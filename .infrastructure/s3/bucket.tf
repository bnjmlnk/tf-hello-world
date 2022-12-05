resource "aws_s3_bucket" "tf-hello-world" {
  bucket_prefix = "${var.bucket_prefix}"
  # bucket = "${var.bucket_name}"
  force_destroy = false

  tags = {
    Name = "tf-hello-world"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "tf-hello-world_acl" {
    bucket = aws_s3_bucket.tf-hello-world.id
    acl = var.acl_value
}

resource "aws_s3_bucket_versioning" "tf-hello-world_versioning" {
    bucket = aws_s3_bucket.tf-hello-world.id
    versioning_configuration {
      status = "Enabled"
    }
}