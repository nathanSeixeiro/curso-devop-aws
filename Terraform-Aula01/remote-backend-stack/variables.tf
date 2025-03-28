variable "tags" {
  description = "Tags to be applied to all resources"
  type        = map(string)
  default = {
    Environment = "production"
    Project     = "devops-na-nuvem"
    Owner       = "devops-aws-007"
  }
}

variable "assume_role" {
  description = "Role ARN to assume"
  type = object({
    name     = string
    role_arn = string
    region   = string
  })
  default = {
    name     = "devops-aws-007"
    role_arn = "arn:aws:iam::825502798690:role/devops-aws-007"
    region   = "us-west-1"
  }
}

variable "aws_s3_bucket_versioning" {
  description = "S3 bucket versioning configuration"
  type = object({
    status = string
  })
  default = {
    status = "Enabled"
  }
}

variable "remote_backend" {
  description = "Remote backend configuration"
  type = object({
    bucket_name                = string
    dynamo_table_name          = string
    dynamo_table_billing_mode  = string
    dynamo_table_hash_key      = string
    dynamo_table_hash_key_type = string
  })
  default = {
    bucket_name                = "devops-aws-terraform-state"
    dynamo_table_name          = "devops-aws-remote-table"
    dynamo_table_billing_mode  = "PAY_PER_REQUEST"
    dynamo_table_hash_key      = "LockId"
    dynamo_table_hash_key_type = "S"
  }
}
