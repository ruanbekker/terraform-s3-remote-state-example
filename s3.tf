resource "aws_s3_bucket" "test-bucket" {
  bucket        = "${var.bucket_name}"
  acl           = "private"
  region        = "${var.region}"
  force_destroy = "${var.force_destroy}"

  versioning {
    enabled = "${var.versioning}"
  }

}
