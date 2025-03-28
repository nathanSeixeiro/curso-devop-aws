output "remote_backend" {
  value = {
    bucket_name                = aws_s3_bucket.this.id
    dynamo_table_name          = aws_dynamodb_table.this.name
    dynamo_table_billing_mode  = aws_dynamodb_table.this.billing_mode
    dynamo_table_hash_key      = aws_dynamodb_table.this.hash_key
    dynamo_table_hash_key_type = aws_dynamodb_table.this.attribute[0].type
  }
  description = "Remote backend configuration"
}
