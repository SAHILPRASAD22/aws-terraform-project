resource "aws_instance" "web" {
  ami                         = "ami-0c7217cdde317cfec"
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.web.id]
  associate_public_ip_address = true
  iam_instance_profile        = aws_iam_instance_profile.ec2_profile.name

  user_data = <<-EOF
              #!/bin/bash
              apt update -y
              apt install apache2 -y
              systemctl enable apache2
              systemctl start apache2

              echo "<h1>Hello from Terraform AWS EC2</h1>" > /var/www/html/index.html
              EOF

  lifecycle {
    ignore_changes = [user_data]
  }

  tags = merge(local.common_tags, {
    Name = "terraform-web-server"
  })
}
