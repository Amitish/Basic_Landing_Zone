# Basic_Landing_Zone

🚀** Basic Azure Landing Zone – Terraform Infrastructure Deployment**

A lightweight, modular, and easy-to-deploy Azure Landing Zone built with Terraform.
Designed for beginners, POCs, and teams who want a simple, clean, reusable Azure infra setup.

⭐ What This Project Does

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

All fully automated using Terraform.


🔧 Key Features
🧩 **1. Pure Modular Architecture**

Each resource is a separate module in the child/ folder:

Reusable

Portable

Easy to modify

No duplicated code

🌍 **2. Environment-Based Deployment**

Separate directories for:

dev

prod

Each has:

Provider configuration

Its own main.tf

Its own variables & state

Makes it simple to deploy the same infra to multiple environments.

🤖 **3. CI/CD Ready (Azure DevOps Pipeline Included)**

The repo includes:
These automate:

Terraform Init

Terraform Validate

Terraform Plan

Terraform Apply

🛡️ **4. Secure Setup**

Uses Azure Key Vault

Passwords handled with key_pssd module

No secrets stored in code

RBAC-friendly design

🚀 **Deployment Flow**

Select an environment (dev or prod)

Update values inside main.tf

Run Terraform commands:
