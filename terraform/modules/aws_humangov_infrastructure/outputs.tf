output "instance_id" {
  value = aws_instance.state_ec2.id
}
output "instance_public_ip" {
  value = aws_instance.state_ec2.public_ip
}
