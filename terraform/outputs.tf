output "eks_cluster_id" {
  value = module.eks.cluster_id
}

output "kms_key_arn" {
  value = module.kms.key_arn
}
