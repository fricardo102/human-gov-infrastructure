variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "state_name" {
  type        = string
  description = "Nome do estado ou província germanaged pelo HumanGov"
  default     = "california"
}
