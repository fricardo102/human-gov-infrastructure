variable "states" {
  description = "The list of state names"
  default     = ["california","florida","nevada"]
}

module "aws_humangov_infrastructure" {
  source     = "./modules/aws_humangov_infrastructure"
  for_each   = toset(var.states)
  state_name = each.value
}
