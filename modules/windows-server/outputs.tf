output "instance_ids" {
  value = aws_instance.windows_server[*].id
}

output "public_ips" {
  value = aws_instance.windows_server[*].public_ip
}
