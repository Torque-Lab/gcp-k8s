variable "project" {
  type        = string
  description = "Project"
  default     = "sitewach-386205"
}

variable "vpc_name" {
  type        = string
  description = "VPC name"
  default     = "my-vpc"
}
variable "subnet_name" {
  type        = string
  description = "Subnet name"
  default     = "my-subnet"
}
variable "cidr" {
  type        = string
  description = "CIDR block"
  default     = "10.10.0.0/16"
}
variable "region" {
  type        = string
  description = "Region"
  default     = "us-central1"
}

