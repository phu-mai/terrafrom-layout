
# Terraform Directory structure

### Project directory


### Terraform-IAC directory

Terraform deploy service

```

.
├── README.md
├── global
│   └── credential
│       ├── global.tf
│       ├── main.tf
│       └── providers.auto.tfvars
├── modules
│   └── README.md
├── prod
│   └── ap-southeast-1-Singapore
│       ├── services
│       └── vpc
└── stag
    └── ap-southeast-1-Singapore
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
