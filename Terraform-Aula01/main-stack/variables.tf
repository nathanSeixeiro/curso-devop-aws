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

variable "sqs_queues" {
  description = "Create SQS Queuea"
  type = list(object({
    name                      = string
    delay_seconds             = number
    max_message_size          = number
    message_retention_seconds = number
    receive_wait_time_seconds = number
  }))
  default = [{
    name                      = "terraform-example-queue-1"
    delay_seconds             = 90
    max_message_size          = 2048
    message_retention_seconds = 86400
    receive_wait_time_seconds = 10
    },
    {
      name                      = "terraform-example-queue-2"
      delay_seconds             = 90
      max_message_size          = 2048
      message_retention_seconds = 86400
      receive_wait_time_seconds = 10
  }]
}
