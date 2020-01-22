
# Terraform Directory structure

### Project directory


### Terraform-IAC directory

Terraform deploy service

```

.
├── README.md
├── global
│   ├── credential
│   │   ├── global.tf
│   │   └── providers.auto.tfvars
│   ├── iam
│   │   ├── README.md
│   │   ├── iam-assumable-role-eks-master.tf
│   │   ├── iam-assumable-role-eks-node.tf
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── terraform.tf
│   │   └── variables.tf
│   └── s3
├── modules
│   └── aws
│       ├── eks-master
│       ├── iam
│       ├── security-group
│       └── vpc
└── prod-webextension
    ├── ap-southeast-1-Singapore
    │   ├── data-storage
    │   ├── services
    │   └── vpc
    ├── eu-west-1-Ireland
    │   ├── services
    │   └── vpc
    └── us-east-2-Ohio
        ├── services
        └── vpc

```

### Readme.md

Introduction guidelines

### Global

- credential: AWS credentials access_key and secret_key(were load from vault-server vault-server.instance.domain.com).
- iam: create and manages the AWS Identity and Access Management (IAM).

### Modules

- eks-master: provision and manages an EKS Cluster.
- iam: provision and manages Identity and Access Management.
- security-group: Provides a security group resource.
- vpc: Provides an VPC subnet resource.

### <env>

- User workspace the environment you wish to provision (<env> in this case)
- services: the AWS service you wish to deploy
- eks-master : provisioning eks cluster
- vpc: Provides an VPC subnet resource for eks cluster
