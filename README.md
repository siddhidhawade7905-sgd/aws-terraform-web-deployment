🚀 AWS Portfolio Website Deployment Using Terraform
📖 Overview

This project showcases how to automate the deployment of a static portfolio website on AWS using Terraform. Instead of creating cloud resources manually through the AWS Console, the complete infrastructure is provisioned using Infrastructure as Code (IaC) principles.

Terraform creates the networking components, launches an Ubuntu EC2 instance, and executes a User Data Bash script that installs Nginx and deploys the website directly from a GitHub repository.

✨ Features
Fully automated AWS infrastructure deployment
Custom VPC and networking configuration
Secure EC2 instance provisioning
Automatic web server installation using User Data
Portfolio deployment from GitHub
Terraform outputs for quick access
Repeatable and version-controlled infrastructure
🛠️ Tech Stack
Category	Technologies
Infrastructure as Code	Terraform
Cloud Platform	AWS
Compute	EC2 (Ubuntu)
Networking	VPC, Subnet, Internet Gateway, Route Table
Security	Security Group, Key Pair
Web Server	Nginx
Automation	Bash Script
Version Control	Git & GitHub
📂 Repository Structure
terraform-portfolio-deployment/
│
├── project.tf      # Terraform configuration
├── script.sh       # EC2 initialization script
└── README.md       # Project documentation
🏗️ AWS Resources Provisioned

The Terraform configuration creates the following infrastructure:

Custom VPC
Public Subnet
Internet Gateway
Route Table
Route Table Association
Security Group
AWS Key Pair
Ubuntu EC2 Instance
Public IP Address
Output Variables (Public IP & DNS)
🔒 Security Configuration
Allowed Inbound Traffic
Service	Port	Protocol
SSH	22	TCP
HTTP	80	TCP
Outbound Traffic
All outbound traffic is allowed.
⚙️ Automated EC2 Configuration

During EC2 launch, the User Data script automatically performs the following:

Updates Ubuntu packages
Installs Nginx
Starts and enables the Nginx service
Removes the default Nginx webpage
Clones the portfolio project from GitHub
Copies website files to the Nginx web directory
Restarts Nginx

After the instance becomes available, the website is immediately accessible through the browser.

🔄 Deployment Process
Terraform Init
      │
      ▼
Terraform Apply
      │
      ▼
Create Networking Resources
      │
      ▼
Create Security Group
      │
      ▼
Launch EC2 Instance
      │
      ▼
Execute User Data Script
      │
      ▼
Install & Configure Nginx
      │
      ▼
Clone GitHub Repository
      │
      ▼
Deploy Portfolio Website
      │
      ▼
Access Website via Public IP
🚀 Getting Started
Clone the Repository
git clone <repository-url>
cd terraform-portfolio-deployment
Initialize Terraform
terraform init
Validate Configuration
terraform validate
Review the Execution Plan
terraform plan
Deploy Infrastructure
terraform apply

Approve the deployment by typing:

yes
🔑 Connect to the EC2 Instance
ssh -i new_key.pem ubuntu@<EC2-Public-IP>
🌐 Verify the Website

Open your browser and visit:

http://<EC2-Public-IP>

or

http://<EC2-Public-DNS>

You can also test using:

curl http://<EC2-Public-IP>
📊 Terraform Outputs

Once deployment is complete, Terraform displays:

EC2 Public IP Address
EC2 Public DNS Name

These values can be used to access the deployed application.

📚 Skills Demonstrated

This project demonstrates practical knowledge of:

Infrastructure as Code (IaC)
Terraform Workflow
AWS Networking
EC2 Deployment
Security Groups
User Data Automation
Linux Administration
Bash Scripting
Nginx Configuration
GitHub Integration
Cloud Infrastructure Automation

🖥️ Solution Architecture
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
          Route Table Association
                      │
                      ▼
             Ubuntu EC2 Instance
                      │
              User Data Script
                      │
      Install Nginx & Deploy Website
                      │
                      ▼
          Portfolio Website Available

🎓 What I Learned

This project strengthened my understanding of:

Building cloud infrastructure using Terraform
Automating AWS deployments
Designing secure cloud networking
Configuring EC2 instances
Deploying applications using User Data
Hosting websites with Nginx
Integrating GitHub into deployment workflows
Managing cloud resources efficiently through Infrastructure as Code

👩‍💻 About Me

Siddhi Dhawade
Cloud & DevOps Engineer | AWS | Terraform | Linux | Git | GitHub
