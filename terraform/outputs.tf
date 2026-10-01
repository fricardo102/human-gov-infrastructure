output "state_infrastructure_outputs" {
  value = {
    for k, v in module.aws_humangov_infrastructure : k => {
      instance_id         = v.instance_id
      instance_public_ip  = v.instance_public_ip
      s3_bucket_name      = v.s3_bucket_name
      dynamodb_table_name = v.dynamodb_table_name
    }
  }
}
