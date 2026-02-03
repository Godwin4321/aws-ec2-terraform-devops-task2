# AWS EC2 Provisioning with Terraform (DevOps Internship Task 2)

## 📌 Project Overview
This project demonstrates both **manual and automated provisioning of an AWS EC2 instance**.  
The goal is to understand AWS core concepts and apply **Infrastructure as Code (IaC)** using Terraform to create reproducible and secure cloud infrastructure.

---

## 📘 AWS Core Concepts
Notes and explanations of core AWS concepts such as EC2, AMI, VPC, Security Groups, and IAM are documented here:

🔗 https://www.notion.so/AWS-Core-Concepts-2fcfb644b06b808988d6d9cfdf626cfc

---

## 🏗️ Project Structure
aws-ec2-terraform-devops-task2/
├── terraform/
│ ├── main.tf
│ ├── variables.tf
│ └── outputs.tf
├── screenshots/
└── README.md


---

## ⚙️ Phase 1 — Repository Setup

### Step 1: Create Repository
- Go to GitHub
- Click **New Repository**
- Name: `aws-ec2-terraform-devops-task2`
- Set to **Public**
- Add README

### Step 2: Clone in WSL
```bash
cd ~
git clone https://github.com/YOUR_USERNAME/aws-ec2-terraform-devops-task2.git
cd aws-ec2-terraform-devops-task2


mkdir terraform screenshots
touch terraform/main.tf terraform/variables.tf terraform/outputs.tf


git add .
git commit -m "Initial project structure"
git push

#Check AWS CLI
aws --version


Step 4: Create IAM User

In AWS Console:

Services → IAM → Users → Create User

Name: terraform-user

Enable: Programmatic Access

Attach Policy: AdministratorAccess

Save Access Key & Secret


# Configure AWS CLI
aws configure

🖥️ Phase 3 — Manual EC2 Launch
Step 6: Launch EC2 (AWS Console)

Services → EC2 → Launch Instance

Name: manual-ec2-devops

AMI: Ubuntu 22.04

Instance Type: t2.micro

Key Pair: Create new → devops-key.pem

Network: Default VPC

Security Group:

SSH → Port 22 → My IP

Launch instance

Step 7: SSH into EC2
chmod 400 ~/Downloads/devops-key.pem
ssh -i ~/Downloads/devops-key.pem ubuntu@PUBLIC_IP

🤖 Phase 4 — EC2 Provisioning Using Terraform
Initialize Terraform
cd terraform
terraform init

Apply Configuration
terraform apply

🎥 Demonstration Videos
Manual EC2 + SSH

🔗 https://www.loom.com/share/77a8a969d86e4cf0be929d2fec73b603

Terraform EC2 Provisioning

🔗 https://www.loom.com/share/ff7dde0102434566940656ff5d4461d1

