variable "aws_region" {
  description = "AWS region to deploy resources"
  default     = "us-east-1" # Change to your desired region
}

variable "cluster_name" {
  description = "Name for the EKS cluster"
  default     = "my-cluster"
}
