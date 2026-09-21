output "ec2_public_ip" {
  description = "Public IP address of the EC2 web server"
  value       = aws_instance.web.public_ip
}

output "ec2_public_dns" {
  description = "Public DNS name of the EC2 web server"
  value       = aws_instance.web.public_dns
}

output "website_url" {
  description = "URL of the Apache web server"
  value       = "http://${aws_instance.web.public_ip}"
}
