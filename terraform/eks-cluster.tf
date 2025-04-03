module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = "1.27"

  vpc_id     = var.vpc_id
  subnet_ids = var.subnet_ids

  cluster_encryption_config = [{
    provider_key_arn = module.kms.key_arn
    resources        = ["secrets"]
  }]
}

module "kms" {
  source                  = "terraform-aws-modules/kms/aws"
  description             = "KMS key for EKS"
  enable_key_rotation     = true
  deletion_window_in_days = 10
}
