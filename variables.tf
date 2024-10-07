variable "namespace" {
  description = "The project namespace to use for unique resource naming"
  type        = string
}

variable "ssh_keypair" {
  description = "SSH keypair"
  default     = "my-key-pair"
  type        = string
}

variable "region" {
  description = "AWS region"
  default     = "us-west-1"
  type        = string
}