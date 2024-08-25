

variable "aws_region" {
    type = string
    description = "The region to deploy the infra to"


  validation {
    condition = can(regex("^[a-z][a-z]-[a-z]+-[0-9]+$", var.aws_region))
    error_message = "Only us-east-1 is allowed."
  }

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
  hash_key = object({
    name = string
    type = string
  })
  range_key = object({
    name = string
    type = string
  })
})
  description = ""
  default = {
    table_name = "GameScores"
    hash_key = {
    name = "UserId"
    type = "S"
  }
  range_key = {
    name = "GameTitle"
    type = "S"
  }
  }
}

variable "cidr_block" {
  type = string
  default = "10.0.0.0/16"
  sensitive = true
}