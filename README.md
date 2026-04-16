# DevOps Terraform Labs

This repository contains hands-on Terraform labs focused on building and troubleshooting AWS infrastructure.

---

## 📦 AWS VPC + EC2 Lab

### Overview

This lab provisions a basic AWS environment using Terraform, including:

- VPC
- Public Subnet
- Internet Gateway (IGW)
- Route Table with internet access
- Security Group (SSH access)
- EC2 instance

---

## 🏗️ Architecture

EC2 Instance
↓
Public Subnet
↓
Route Table (0.0.0.0/0 → IGW)
↓
Internet Gateway
↓
Internet


---

## 🚀 Usage

```bash
terraform init
terraform plan
terraform apply

🧹 Cleanup

terraform destroy

🧠 Key Learnings

Built AWS networking from scratch using Terraform
Configured public subnet routing with Internet Gateway
Understood dependency relationships between VPC, subnet, route table, and IGW
Debugged real-world connectivity issue where SSH failed due to missing route configuration

⚠️  Notes

Security group allows SSH from 0.0.0.0/0 for lab purposes only
Terraform state is currently local (next step: remote backend)

🎯 Purpose

This project is part of my DevOps skill development, focusing on real-world infrastructure automation and troubleshooting.
