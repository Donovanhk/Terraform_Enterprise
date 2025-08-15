variable "instance_count" {
  type    = number
  default = 1
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  type    = string
  default = "t3.medium"
}

variable "subnet_id" {
  type = string
}

variable "key_name" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "name_prefix" {
  type = string
}

variable "environment" {
  type = string
}

variable "user_data" {
  type    = string
  default = ""
}

variable "volume_size" {
  type    = number
  default = 50
}
