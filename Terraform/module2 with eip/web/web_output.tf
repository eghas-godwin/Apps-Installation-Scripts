output "web_public_ip" {
  value       = aws_instance.web.public_ip
  description = "The Public IP address of Web Server."
}

output "web_public_dns" {
  value       = aws_instance.web.public_dns
  description = "The Public DNS address of Web Server."
}

output "web_instance_id" {
  value = aws_instance.web.id
}

output "web_elastic_ip" {
  value = module.eip.web_eip
}
