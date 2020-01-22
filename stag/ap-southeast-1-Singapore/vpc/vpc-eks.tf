module "vpc_asia_eks_prod" {
  source          = "git::https://gitlab.com/elsacorp/infrastructure/terraform-aws-vpc.git"

  name = "vpc-asia-eks-prod"
  cidr = "10.10.0.0/16"

  azs             = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
  private_subnets = ["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]
  public_subnets  = ["10.10.101.0/24", "10.10.102.0/24", "10.10.103.0/24"]

  enable_nat_gateway   = true
  enable_vpn_gateway   = true
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Terraform   = "true"
    Environment = "prod"
    Team        = "platform"
  }
  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = "1"
    KubernetesCluster = "eks-cluster-prod"
  }
  public_subnet_tags = {
    "kubernetes.io/role/elb" = "1"
    KubernetesCluster = "eks-cluster-prod"
  }
}