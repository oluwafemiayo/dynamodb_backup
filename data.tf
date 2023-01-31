data "aws_dynamodb_table" "existing_table" {
  name = var.existing_name
}