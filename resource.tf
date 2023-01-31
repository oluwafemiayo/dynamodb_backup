provider "aws" {
  alias  = "main"
  region = var.main_region
}

provider "aws" {
  alias  = "alt"
  region = var.replica_region
}


resource "aws_dynamodb_table_replica" "replica_table" {
  provider         = "aws.alt"
  global_table_arn = data.aws_dynamodb_table.existing_table.arn

  tags = {
    Name = "BACK"
    Key = "User"
  }
}




#terraform import aws_dynamodb_table.existing MyTable:us-east-1









