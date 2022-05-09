resource "test" "allowed" {
  todo = false
}
resource "aws_s3_bucket" "test" {
  tags = merge(var.default_tags, {
    name = "snyk_blob_storage_${var.environment}"
  })
}