# Azure-Admin-Portfolio

This portfolio is a modular, automation-ready toolkit designed for hybrid cloud administrators. It showcases resilient PowerShell scripting, session continuity workflows, and secure Azure deployment practices — all built with portability, recovery, and clarity in mind.

It also demonstrates hands-on Azure administration using PowerShell, Azure CLI, and GitHub Actions — automating resource creation and management to highlight DevOps fluency and cloud lifecycle control.

---

## Key Features

- Deployment automation via GitHub Actions and service principal authentication  
- Modular PowerShell tools for alias management, logging, and session restoration  
- Monitoring starter scripts for Log Analytics, Alerts, and Metrics  
- Role-based access control (RBAC) scaffolds for secure resource management  
- Infrastructure as Code samples for scalable provisioning  
- CLI and PowerShell scripts for resource lifecycle management  
- YAML workflows for CI/CD deployment automation  

---

## 📁 Folder Structure

```
Azure-Admin-Portfolio/ ├── README.md ├── PowerShellToolkit/ │ ├── initProfile.ps1 │ ├── aliases.ps1 │ ├── sessionTracker.ps1 │ └── tools/ │ ├── syncLogs.ps1 │ └── archiveLogs.ps1 ├── Monitoring/ │ ├── README.md │ ├── LogAnalytics/ │ ├── Alerts/ │ └── Metrics/ ├── RBAC/ │ ├── define-roles.ps1 │ └── assign-role.ps1 ├── IaC/ │ └── deploy-vnet.bicep ├── scripts/ │ ├── deploy-resources.ps1 │ ├── delete-resources.ps1 │ └── cli-commands.sh ├── .github/ │ └── workflows/ │ └── azure-deploy.yml ├── validate.yml ├── rbac/ ├── Tier II Monitoring Module/ └── role assignment script/
```


---

## Getting Started

1. Clone the repo to your local or cloud development environment  
2. Run `PowerShellToolkit/initProfile.ps1` to initialize session tools and aliases  
3. Customize your deployment workflow in `.github/workflows/azure-deploy.yml`  
4. Reference `Monitoring/` and `RBAC/` for additional provisioning scripts  

---

## Setup

- Azure account with active subscription  
- PowerShell 7+ with Az module (`Install-Module -Name Az`)  
- Azure CLI installed (`az login`)  
- GitHub repository with secrets configured (see below)

### Configure Azure Credentials

Create a service principal:

```bash
az ad sp create-for-rbac --name "PortfolioSP" --role Contributor --scopes /subscriptions/<your-subscription-id>


---

## 🧩 Next Steps

1. Replace the contents of `README.md` with the above.
2. Run:

```bash
git add README.md
git rebase --continue
