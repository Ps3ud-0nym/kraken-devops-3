variable "region" {
  description = "The region to deploy this resource into"
  default     = "eu-west-2"
}

variable "iam_user_name" {
  description = "The name of the iam user to create"
}

variable "iam_group_name" {
  description = "The name of the iam group to create"
}

variable "iam_role_name" {
  description = "The name of the iam role to create"
  default     = "eu-west-2"
}
