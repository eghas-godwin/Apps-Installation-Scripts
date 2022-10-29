variable "instance_type_list" {
  description = "The aws instance type"
  type        = list(string)
  default     = ["t2.micro", "t2.medium", "t3.large"]
}

variable "key_name" {
  description = "The aws ssh key"
  type        = string
  default     = "awssshkey"
}

variable "ingressrules" {
  description = "List of ingress ports"
  type        = list(number)
  default     = [22,80,443,8080,8081,9000]
}

variable "egressrules" {
  description = "List of egress ports"
  type        = list(number)
  default     = [25,53,80,443,3306,8080,8081,9000]
}
