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