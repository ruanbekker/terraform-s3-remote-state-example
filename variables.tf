variable "bucket_name" {
  default     = ""
  description = "S3 Bucket Name"
  type        = string
}

variable "versioning" {
  default     = true
  description = "Enables S3 Object Versioning"
  type        = bool
}

variable "region" {
  default     = "eu-west-1"
  description = "S3 Bucket Region"
  type        = string
}

variable "force_destroy" {
  default     = false
  description = "All objects should be deleted from the bucket"
  type        = bool
}
