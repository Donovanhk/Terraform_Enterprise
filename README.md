```text
# Terraform_Enterprise

terraform-aws-vm-infra/
├── modules/
│   ├── windows-server/
│   │   └── main.tf
│   │   └── variables.tf
│   │   └── outputs.tf
│   ├── windows-desktop/
│   │   └── main.tf
│   │   └── variables.tf
│   │   └── outputs.tf
│   ├── linux-vm/
│   │   └── main.tf
│   │   └── variables.tf
│   │   └── outputs.tf
│   └── common/
│       └── networking.tf
│       └── iam.tf
│       └── security_groups.tf
├── environments/
│   ├── dev/
│   │   └── main.tf
│   │   └── terraform.tfvars
│   ├── staging/
│   │   └── main.tf
│   │   └── terraform.tfvars
│   └── prod/
│       └── main.tf
│       └── terraform.tfvars
├── scripts/
│   └── init.sh
│   └── deploy.sh
├── .github/
│   └── workflows/
│       └── terraform-ci.yml
├── README.md
└── backend.tf
