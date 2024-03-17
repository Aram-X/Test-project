provider "aws" {
  region = var.aws_region
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
}

# Define EKS Cluster
module "eks_cluster" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = "1.21"
  vpc_id          = aws_vpc.my_vpc.id

  node_groups = {
    eks_nodes = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1
      instance_type    = "t2.micro"
    }
  }
}

output "eks_cluster_endpoint" {
  value = module.eks_cluster.cluster_endpoint
}

output "security_group_ids" {
  value = module.eks_cluster.cluster_security_group_id
}
