output "instance_id" {
  value       = aws_instance.dev.id
  description = "The EC2 instance id."
}

output "instance_public_ip" {
  value       = aws_instance.dev.public_ip
  description = "The Public IP address of EC2 instance."
}

output "instance_public_dns" {
  value       = aws_instance.dev.public_dns
  description = "The Public DNS address of EC2 instance."
}
