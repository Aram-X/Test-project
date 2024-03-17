output "eks_cluster_endpoint" {
  value = module.eks_cluster.cluster_endpoint
}

output "security_group_ids" {
  value = module.eks_cluster.cluster_security_group_id
}
