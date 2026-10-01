output "instance_id" {
  value = aws_instance.state_ec2.id
}

output "instance_public_ip" {
  value = aws_instance.state_ec2.public_ip
}

output "s3_bucket_name" {
  value = aws_s3_bucket.state_s3.bucket
}

output "dynamodb_table_name" {
  value = aws_dynamodb_table.state_dynamodb.name
}
