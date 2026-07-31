variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "af-south-1"
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "sitholebs-eks-dev"
}