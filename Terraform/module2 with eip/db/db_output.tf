output "db_private_ip" {
  value       = aws_instance.db.private_ip
  description = "The Private IP address of DB Server."
}
