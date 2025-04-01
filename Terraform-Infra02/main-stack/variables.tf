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

