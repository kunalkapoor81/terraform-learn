## 🚀 Project Overview

This repository demonstrates how to use Terraform to provision and manage AWS infrastructure while applying real-world DevOps best practices:

- Declarative infrastructure provisioning using Terraform
- Modular architecture for reusable Terraform components
- Automated EC2 deployment with custom configuration scripts
- Use of provisioners to bootstrap instances with software and services
- Reproducible and maintainable Infrastructure-as-Code

The repository is organized across multiple branches, each focusing on specific Terraform concepts.

---

## 🌿 Branches Overview

### 1️⃣ `feature/modules`
- Implements **Terraform modules** for reusable components.
- Separates networking, compute, and security into distinct modules.
- Demonstrates passing variables, outputs, and modular composition.
- **Skills demonstrated:** Terraform modules, modular design, variable management.

### 2️⃣ `feature/provisioners`
- Shows how to use **Terraform provisioners** to configure AWS resources post-provisioning.
- Automates software installation (e.g., Docker) and configuration on EC2 instances.
- Highlights `remote-exec` and user-data scripts for bootstrapping.
- **Skills demonstrated:** Provisioners, automated configuration, scripting, EC2 setup.

### 3️⃣ `feature/deploy-to-ec2-default-components`
- Full end-to-end deployment of an **EC2 instance with default components**.
- Includes Docker installation, Nginx deployment, and security group configuration.
- Demonstrates operational best practices like system service management and automated bootstrapping.
- **Skills demonstrated:** EC2 provisioning, user-data scripts, Docker deployment, Terraform lifecycle management.

---

## 📋 Getting Started

Follow these steps to run the Terraform projects in this repository:

1. **Install Terraform**
   - Download and install Terraform CLI (version 1.5+ recommended)
   ```bash
   terraform -v
2. **Configure AWS Credentials**
   ```bash
      export AWS_ACCESS_KEY_ID="YOUR_KEY"
      export AWS_SECRET_ACCESS_KEY="YOUR_SECRET"
3. **Clone the Repository and Select Branch**  
   ```bash
      git clone https://github.com/kunalkapoor81/terraform-learn.git
      cd terraform-learn
      git checkout feature/modules  # or any branch you want to explore
4. **Initialize Terraform**
   ```bash
      terraform init
5. **Preview the Planned Infrastructure**
   ```bash
      terraform plan
6. **Apply the Configuration**
   ```bash
      terraform apply
7. **Clean Up Resources**
   ```bash
      terraform destroy

   

   
