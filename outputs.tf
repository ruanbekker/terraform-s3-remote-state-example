output "bucket_arn" {
  value       = aws_s3_bucket.test-bucket.arn
  description = "`arn` exported from `aws_s3_bucket`"
}

output "bucket_id" {
  value       = aws_s3_bucket.test-bucket.id
  description = "`id` exported from `aws_s3_bucket`"
}

output "region" {
  value       = aws_s3_bucket.test-bucket.region
  description = "`region` exported from `aws_s3_bucket`"
}

output "url" {
  value       = "https://s3-${aws_s3_bucket.test-bucket.region}.amazonaws.com/${aws_s3_bucket.test-bucket.id}"
  description = "Derived URL to the S3 bucket"
}
