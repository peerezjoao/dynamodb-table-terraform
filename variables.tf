variable "aws_region" {
    type = string
    description = "The region to deploy the infra to"
}

variable "aws_profile" {
    type = string
    description = "The aws profile to use to authenticate with terraform"
    default = "tf_user"
}

variable "read_capacity" {
    type = number
    description = ""
    default = 5
}   

variable "write_capacity" {
    type = number
    description = ""
    default = 5
}   

variable "deletion_protection" {
    type = bool
    description = ""
    default = false
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
    default = [ "value" ]
  
}