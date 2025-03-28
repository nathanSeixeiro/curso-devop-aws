resource "aws_sqs_queue" "this" {
  count                     = length(var.sqs_queues)
  name                      = "${var.sqs_queues[count.index].name}-${terraform.workspace}"
  delay_seconds             = var.sqs_queues[count.index].delay_seconds
  max_message_size          = var.sqs_queues[count.index].max_message_size
  message_retention_seconds = var.sqs_queues[count.index].message_retention_seconds
  receive_wait_time_seconds = var.sqs_queues[count.index].receive_wait_time_seconds

}
