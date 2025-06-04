provider "aws" {
  region = var.region
}

variable "region" {
  description = "AWS region to deploy to"
  type        = string
}

output "region" {
  description = "The AWS region where the resources are deployed"
  value       = var.region
}