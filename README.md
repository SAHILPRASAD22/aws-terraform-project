# AWS Cloud Infrastructure Automation using Terraform

## Project Overview

This project demonstrates automated deployment of AWS cloud infrastructure using Terraform Infrastructure as Code (IaC).

The infrastructure includes:

- Amazon VPC
- Public Subnet
- Internet Gateway
- Route Table
- Security Group
- Ubuntu EC2 instance
- Apache web server
- Amazon S3 bucket
- IAM Role and Instance Profile
- CloudWatch CPU monitoring

The EC2 web server automatically installs Apache using Terraform `user_data`.

## Architecture

```text
Internet
   |
   v
Internet Gateway
   |
   v
VPC (10.0.0.0/16)
   |
   v
Public Subnet (10.0.1.0/24)
   |
   v
EC2 Ubuntu + Apache
   |
   +---- IAM Instance Profile
   |          |
   |          v
   |       IAM Role
   |
   +---- CloudWatch CPU Alarm

S3 Bucket
   ^
   |
Terraform
