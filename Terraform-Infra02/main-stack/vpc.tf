resource "aws_vpc" "this" {
  cidr_block = "10.0.0.0/24"
  tags = {
    Name = "vpc-devops-aws-na-nuvemw"
  }
}