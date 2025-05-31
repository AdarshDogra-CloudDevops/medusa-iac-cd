# Medusa IaC & CD on AWS

This project automates the deployment of the [Medusa](https://medusajs.com/) headless commerce backend on AWS using **Terraform** and sets up a **CI/CD pipeline using GitHub Actions**.

## 🚀 What It Does

- Deploys Medusa backend to **AWS ECS with Fargate**
- Provisions **PostgreSQL** via Amazon **RDS**
- Uses **SSM Parameter Store** for secret management
- Handles **networking** via default VPC and subnets
- Automates deployments using **GitHub Actions**

## 🛠 Tech Stack

- Terraform
- AWS (ECS, Fargate, RDS, SSM)
- GitHub Actions

## 📦 Deployment Instructions

> Make sure AWS credentials are set up in GitHub Secrets:  
> `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`, `AWS_REGION`

1. Clone the repo  
2. Update `.tf` files as needed  
3. Push changes to trigger the GitHub Actions pipeline  
4. Done! 🚀

## 🔐 Security

- No secrets are stored in code  
- All credentials are managed via SSM and GitHub Secrets
