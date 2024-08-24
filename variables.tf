variable "aws_region" {
    type = string
    description = "The region to deploy the infra to"
}

variable "aws_profile" {
    type = string
    description = "The aws profile to use to authenticate with terraform"
    default = "tf_user"
}

variable "tags" {
  type = map(string)
  description = ""
  default = {
    "Project" = "Estudos Terraform"
    "CreatedAt" = "2024-08-23"
  }
}

variable "dynamodb_field_list" {
    type = list(string)
    description = ""
    default = [ "UserId", "GameTitle" ]
  
}

variable "database_config" {
type = object({
  table_name = string
  read_capacity = optional(number, 3)
  write_capacity = optional(number, 3)
  deletion_protection = optional(bool, false)
})
  description = ""
  default = {
    table_name = "GameScores"
  }
}