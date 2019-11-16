# terraform-s3-remote-state-example
S3 Remote State Example with Terraform

## Info

This will show you how to setup your resources for remote state using S3 and DynamoDB and then we will provision another S3 bucket using remote state.

## Setup Remote State Resources

```
$ cd remote_state
$ terraform init
$ terraform apply

aws_dynamodb_table.terraform_state_lock: Creating...
aws_s3_bucket.terraform_state: Creating...
aws_dynamodb_table.terraform_state_lock: Creation complete after 9s [id=terraform-state-lock]
aws_s3_bucket.terraform_state: Still creating... [10s elapsed]
aws_s3_bucket.terraform_state: Creation complete after 13s [id=my-terraform-remote-state-storage-dev]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.
```

## Provision S3 Bucket with Remote State

Change back to the root directory of the project and provision:

```
$ cd ../
$ terraform init
$ terraform apply

Acquiring state lock. This may take a few moments...
Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
Releasing state lock. This may take a few moments...

Outputs:

bucket_arn = arn:aws:s3:::my-test-bucket
bucket_id = my-test-bucket
region = eu-west-1
url = https://s3-eu-west-1.amazonaws.com/my-test-bucket
```
