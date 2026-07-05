variable "project_name" {
  description = "Project name used as a prefix for resource names"
  type        = string
  default     = "gen-portfolio-site"
}

variable "aws_region" {
  description = "AWS region for the S3 bucket"
  type        = string
  default     = "ap-northeast-1"
}
