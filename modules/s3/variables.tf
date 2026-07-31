variable "surname" {
  description = "Surname used when generating the S3 bucket name."
  type        = string

  validation {
    condition     = length(var.surname) > 0
    error_message = "Surname cannot be empty."
  }
}

variable "initials" {
  description = "User initials used in the bucket name."
  type        = string

  validation {
    condition     = length(var.initials) > 0
    error_message = "Initials cannot be empty."
  }
}

variable "environment" {
  description = "Deployment environment."
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "test", "int", "prod"], var.environment)
    error_message = "Environment must be dev, test, int or prod."
  }
}

variable "resource" {
  description = "Type of AWS resource."
  type        = string
  default     = "s3"
}