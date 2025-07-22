# CST8918 - Lab 12: Terraform CI/CD on Azure with GitHub Actions

This project demonstrates a CI/CD pipeline for deploying a containerized application to Azure Kubernetes Service (AKS) using **Terraform** and **GitHub Actions**.

The infrastructure code is defined in Terraform and stored in the `infra` folder. The CI/CD automation is defined in the `.github/workflows` directory.

---

## 👥 Team Members

| Name             | GitHub Username        | Responsibilities                          |
|------------------|------------------------|--------------------------------------------|
| Maryam Khalaf    | MaryamKhalaf2010       | Repo setup, remote backend configuration   |
| Member B         | usernameB              | AKS infrastructure                        |
| Member C         | usernameC              | GitHub Actions CI/CD                      |

---

## 📁 Folder Structure

```
cst8918-w25-lab12
├── .github
│   └── workflows
├── app
│   └── .gitkeep
├── infra
│   ├── az-federated-credential-params
│   ├── tf-app
│   └── tf-backend
├── screenshots
├── .editorconfig
├── .gitignore
└── README.md
```

---

## 🔐 Terraform Remote State

Terraform state is stored remotely in an Azure Storage Account:

- **Resource Group**: `cst8918-rg`
- **Storage Account**: `tfstate12345`
- **Container**: `tfstate`

---

## ✅ Screenshots (Required for Submission)

| Description          | Screenshot Path                    |
|----------------------|-------------------------------------|
| PR Checks Passed     | `screenshots/pr-checks.png`         |
| Terraform Plan Output| `screenshots/pr-tf-plan.png`        |

---

## 📋 Notes

- Application code is not included — focus is on infrastructure and automation.
- CI/CD includes static testing, integration testing, deploy, and drift detection.
- Uses GitHub OIDC for secure Azure login from workflows.
