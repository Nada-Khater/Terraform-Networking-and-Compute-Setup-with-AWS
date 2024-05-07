# Terraform-Networking-and-Compute-Setup-with-AWS 🌐
## 📝 Overview
This project aims to automate the setup of networking and compute resources in AWS using Terraform. It creates a VPC with public and private subnets, an internet gateway, route tables, security groups, EC2 instances, RDS instance, and Elasticache instance.

## 🚀 Features
1. **🔒 Networking:**
   - VPC creation with public and private subnets.
   - Internet gateway attachment.
   - Public and private route table creation.
   - Public route attachment to public subnet.
   - Network module for easy management.
2. **🖥️ Compute:**
   - Security group creation for SSH access.
   - Security group creation for SSH and port 3000 access from VPC CIDR only.
   - Bastion host (EC2) creation in the public subnet with SSH security group.
   - Application server (EC2) creation in the private subnet with port 3000 security group.
3. **🏢 Workspace and Environment Setup:**
   - Creation of dev and prod workspaces.
   - Use of variable definition files (.tfvars) for environments.
   - Separation of network resources into a module.
4. **🛠️ Additional Tasks:**
   - Local-exec provisioner to print bastion host public IP.
   - RDS instance creation in the private subnet.
   - Elasticache instance creation in the private subnet.
   - SES email verification in aws console.
   - Lambda function creation for sending emails.
   - Trigger creation to detect state file changes and send email notifications.

## 📋 Prerequisites
- Terraform installed on your local machine
- AWS account and credentials configured
- Basic knowledge of AWS services and Terraform

## 💻 Usage
1. Clone the repository:
   ```
   git clone https://github.com/Nada-Khater/Terraform-Networking-and-Compute-Setup-with-AWS.git
   ```
   ```
   cd Terraform-Networking-and-Compute-Setup-with-AWS
   ```
2. Initialize Terraform:
   ```
   terraform init
   ```
3. Create a workspace for the desired environment (dev or prod):
   ```
   terraform workspace new dev
   ```
4. Apply the Terraform configuration:
   ```
   terraform apply --var-file dev.tfvars
   ```
5. Access the bastion host using its public IP:
   ```
   ssh -i path/to/your/key.pem ubuntu@bastion-public-ip
   ```
6. Clean up resources when finished:
   ```
   terraform destroy --var-file dev.tfvars
   ```

## 📷 Screenshots

1. Apply Terraform configuration and selecting the dev environment .
   
   <img src="https://github.com/Nada-Khater/Terraform-Networking-and-Compute-Setup-with-AWS/assets/75952748/a3b2fa90-c80d-418f-bdad-b9f0e7d79042" alt="Screenshot 1" width="900" height="450">

2. Connecting from our localhost to bastion host.
   
   <img src="https://github.com/Nada-Khater/Terraform-Networking-and-Compute-Setup-with-AWS/assets/75952748/fc35d90b-4182-45ec-8321-41ed1f011d5d" alt="Screenshot 2" width="900" height="700">

3. Connecting from bastion host to the private instance (application).

   <img src="https://github.com/Nada-Khater/Terraform-Networking-and-Compute-Setup-with-AWS/assets/75952748/6dae7cec-23b7-41f0-a95a-758c0a3f1e5e" alt="Screenshot 3" width="900" height="700">

4. Sending email notification when making any change in the state file (terraform apply).
   
   <img src="https://github.com/Nada-Khater/Terraform-Networking-and-Compute-Setup-with-AWS/assets/75952748/69637e56-569e-427c-82d9-d94fc28742cd" alt="Screenshot 4" width="900" height="300">






