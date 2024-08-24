provider "aws" {
    region = var.aws_region
    profile = var.aws_profile
}

resource "aws_dynamodb_table" "games" {
  name = "GameScore"
  billing_mode = "PROVISIONED"
  read_capacity = 5
  write_capacity = 5
  deletion_protection_enabled = false

  hash_key = "UserId"

  attribute {
    name = "UserId"
    type = "S"
  }

}