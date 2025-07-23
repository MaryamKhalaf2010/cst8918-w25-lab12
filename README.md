# CST8918 - Lab 12: Terraform CI/CD on Azure with GitHub Actions

This project demonstrates a CI/CD pipeline for deploying a containerized application to Azure Kubernetes Service (AKS) using **Terraform** and **GitHub Actions**.

The infrastructure code is defined in Terraform and stored in the `infra` folder. The CI/CD automation is defined in the `.github/workflows` directory.

---

##  Team Members

| Name             | GitHub Username        | Responsibilities                          |
|------------------|------------------------|--------------------------------------------|
| Maryam Khalaf    | MaryamKhalaf2010       | Repo setup, remote backend configuration   |
| Rahaf Alkhlaf    | alkh0115               | AKS infrastructure                        |
| Member C         | usernameC              | GitHub Actions CI/CD                      |

---

##  Folder Structure

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

##  Terraform Remote State

Terraform state is stored remotely in an Azure Storage Account:

- **Resource Group**: `cst8918-rg`
- **Storage Account**: `tfstate12345`
- **Container**: `tfstate`

---

##  Screenshots (Required for Submission)

| Description          | Screenshot Path                    |
|----------------------|-------------------------------------|
| PR Checks Passed     | `screenshots/pr-checks.png`         |
| Terraform Plan Output| `screenshots/pr-tf-plan.png`        |

---

## Notes

- Application code is not included — focus is on infrastructure and automation.
- CI/CD includes static testing, integration testing, deploy, and drift detection.
- Uses GitHub OIDC for secure Azure login from workflows.

## GitHub Actions Workflow: Static Terraform Checks
A CI workflow was added at .github/workflows/infra-static-tests.yml to run Terraform static analysis on each push to the dev branch and on pull requests to main.

### What This Workflow Does
This workflow performs two types of static checks:

### terraform fmt
Verifies that all .tf files are properly formatted using the standard Terraform style.

### tflint
Lints the Terraform code for common issues, best practices, and style problems.

##  Trigger Conditions
This workflow runs automatically when:

A developer pushes to the dev branch

A pull request is opened targeting the main branch

## Successful Workflow Execution
After pushing the workflow file and opening a PR from dev to main, the GitHub Actions pipeline was triggered and completed successfully.

- Screenshot 1: All checks passed

- Screenshot 2: Static Terraform Check Output

### These checks ensure that:

- The Terraform code is clean and consistent

- The CI system is working before applying real infrastructure changes
