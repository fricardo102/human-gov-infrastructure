terraform {
  backend "s3" {
    bucket         = "tcb-devops-mod3-state-hsp"
    key            = "state/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "humangov-terraform-state-lock-table"
  }
}
