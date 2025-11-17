# Basic_Landing_Zone

🚀**Basic Azure Landing Zone – Terraform Infrastructure Deployment**

A lightweight, modular, and easy-to-deploy Azure Landing Zone built with Terraform.
Designed for beginners, POCs, and teams who want a simple, clean, reusable Azure infra setup.

⭐ **What This Project Does**

This Basic Landing Zone provisions the essential Azure infrastructure:

🧱 Resource Group
🌐 Virtual Network (VNet)
📡 Subnet
🖥️ Virtual Machine
🔐 Key Vault
👤 Key Vault User & Password modules
🗄️ SQL Server + SQL Database
🌍 Public IP
🚪 Network Security Groups

- All fully automated using Terraform.


🔧 Key Features . . .
🧩 **1. Pure Modular Architecture**

Each resource is a separate module in the child/ folder:
1. Reusable
2. Portable
3. Easy to modify
4. No duplicated code

🌍 **2. Environment-Based Deployment**

1. Separate directories for:
-dev
-prod

2. Each has:
-Provider configuration
-Its own main.tf
-Its own variables & state
3. Makes it simple to deploy the same infra to multiple environments.

🤖 **3. CI/CD Ready (Azure DevOps Pipeline Included)**

The repo includes:
These automate:
-Terraform Init
-Terraform Validate
-Terraform Plan
-Terraform Apply

🛡️ **4. Secure Setup**

1. Uses Azure Key Vault
2. Passwords handled with key_pssd module
3. No secrets stored in code
4. RBAC-friendly design

🚀 **Deployment Flow**

1. Select an environment (dev or prod)
2. Update values inside main.tf
3. Run Terraform commands: 
-terraform init
-terraform plan
-terraform apply
4. Infra gets provisioned into Azure automatically.
