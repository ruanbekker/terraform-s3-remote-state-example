provider "aws" {
  region = "eu-west-1"
  shared_credentials_file = "/Users/myuser/.aws/credentials"
  profile                 = "dev"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "my-terraform-remote-state-storage-dev"
  tags = {
    Name = "my-terraform-remote-state-storage-dev"
  }
  versioning {
    enabled = true
  }
  lifecycle {
    prevent_destroy = false
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_dynamodb_table" "terraform_state_lock" {
  name           = "terraform-state-lock"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}
