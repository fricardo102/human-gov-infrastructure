output "instance_id" {
  value       = aws_instance.state_svr.id
  description = "ID da instância EC2 criada para o estado"
}

output "instance_public_ip" {
  value       = aws_instance.state_svr.public_ip
  description = "Endereço IP público da instância"
}
