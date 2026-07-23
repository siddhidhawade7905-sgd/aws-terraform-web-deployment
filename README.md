# 🚀 Infrastructure as Code (IaC) with Terraform | AWS Portfolio Deployment

## 📌 Project Overview

This project demonstrates how to provision an AWS infrastructure using **Terraform (Infrastructure as Code)** and automatically deploy a static portfolio website on an **EC2 instance** using a Bash script.

Instead of manually creating AWS resources, the complete infrastructure is defined in Terraform configuration files, making the deployment repeatable, scalable, and version-controlled.

---

## 🛠️ Technologies Used

- Terraform
- AWS EC2
- AWS VPC
- AWS Internet Gateway
- AWS Route Table
- AWS Subnet
- AWS Security Group
- AWS Key Pair
- Linux (Ubuntu)
- Bash Scripting
- Nginx
- Git & GitHub

---

## 📁 Project Structure

```
terraform-portfolio-deployment/
│── project.tf          # Terraform configuration 
│── script.sh         # User data script executed during EC2 launch
│── README.md
```
---

## ⚙️ Infrastructure Created

Terraform provisions the following AWS resources:

- ✅ Custom VPC
- ✅ Public Subnet
- ✅ Internet Gateway
- ✅ Route Table
- ✅ Route Table Association
- ✅ Custom Security Group
- ✅ AWS Key Pair
- ✅ EC2 Instance (Ubuntu)
- ✅ Public IP Assignment
- ✅ Output values for:
  - Public IP
  - Public DNS

---

## 🔐 Security Group Configuration

### Inbound Rules

| Port | Protocol | Purpose |
|------|----------|----------|
| 22 | TCP | SSH Access |
| 80 | TCP | HTTP (Website Access) |

### Outbound Rules

- Allow all outbound traffic

---

## 📜 User Data Automation (script.sh)

When the EC2 instance launches, the following tasks are executed automatically:

1. Updates Ubuntu packages
2. Installs Nginx
3. Starts and enables the Nginx service
4. Removes the default Nginx web page
5. Clones the portfolio repository from GitHub
6. Copies the portfolio files into the Nginx web root
7. Restarts the Nginx service

This enables the website to be deployed automatically without any manual configuration.

---

## 🌐 Deployment Workflow

```
Terraform Apply
        │
        ▼
Create Custom VPC
        │
        ▼
Create Public Subnet
        │
        ▼
Attach Internet Gateway
        │
        ▼
Create Route Table
        │
        ▼
Associate Route Table
        │
        ▼
Create Security Group
        │
        ▼
Import AWS Key Pair
        │
        ▼
Launch EC2 Instance
        │
        ▼
Execute User Data Script
        │
        ▼
Install Nginx
        │
        ▼
Clone Portfolio Repository
        │
        ▼
Host Website
        │
        ▼
Access Website via Browser & Curl
```

---

## ▶️ How to Run

### Clone the repository

```bash
git clone <repository-url>
cd terraform-portfolio-deployment
```

### Initialize Terraform

```bash
terraform init
```

### Preview Infrastructure

```bash
terraform plan
```

### Deploy Infrastructure

```bash
terraform apply
```

Type:

```text
yes
```

Terraform will create all AWS resources.

---

## 🔑 SSH into the EC2 Instance

```bash
ssh -i new_key ubuntu@<Public-IP>
```

---

## 🌍 Access the Website

Using your browser:

```
http://<Public-IP>
```

or

```
http://<Public-DNS>
```

Using curl:

```bash
curl http://<Public-IP>
```

---

## 📤 Terraform Outputs

Terraform displays:

- EC2 Public IP
- EC2 Public DNS

These outputs can be used to access the deployed website.

---

## 💡 Key Concepts Demonstrated

- Infrastructure as Code (IaC)
- AWS Resource Provisioning
- Custom Networking with VPC
- Public Subnet Configuration
- Internet Gateway
- Route Tables
- Security Groups
- EC2 Provisioning
- User Data Automation
- Bash Scripting
- Nginx Web Server
- GitHub Integration
- Terraform Outputs

---

## 📸 Project Architecture

```
                Internet
                    │
                    ▼
           Internet Gateway
                    │
                    ▼
              Custom VPC
                    │
            Public Subnet
                    │
            Route Table
                    │
                    ▼
             EC2 Instance
                    │
        User Data (script.sh)
                    │
       Install Nginx + Git Clone
                    │
                    ▼
          Portfolio Website Hosted
```

---

## 🎯 Learning Outcomes

Through this project, I gained hands-on experience in:

- Writing Infrastructure as Code using Terraform
- Automating AWS infrastructure provisioning
- Creating custom networking resources
- Configuring EC2 instances and security groups
- Automating server setup with Bash scripts
- Hosting a static website using Nginx
- Deploying applications directly from GitHub
- Managing cloud infrastructure in a repeatable and scalable manner

---

## 👩‍💻 Author
 Siddhi Dhawade 

Aspiring Cloud & DevOps Engineer
- GitHub: siddhidhawade-sgd 

