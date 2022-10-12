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
