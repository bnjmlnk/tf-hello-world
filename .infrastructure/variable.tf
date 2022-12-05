variable "AWS_ACCESS_KEY_ID" {
  default = ""
  sensitive = true
}

variable "AWS_SECRET_ACCESS_KEY" {
  default = ""
  sensitive = true
}

variable "AWS_SESSION_TOKEN" {
  default = ""
  sensitive = true
}

variable "region" {
  default = "eu-west-1"
  sensitive = true
}
