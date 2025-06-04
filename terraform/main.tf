provider "aws" {
  region = var.region
}

variable "region" {
  description = "AWS region to deploy to"
  type        = string
}