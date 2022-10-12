variable "key_name" {
  description = "The aws ssh key"
  type        = string
  default     = "awssshkey"
}

variable "instance_type" {
  description = "The aws instance type"
  type        = string
  default     = "t2.micro"
}

