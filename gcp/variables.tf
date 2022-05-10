variable "credentials_path" {
  type        = string
  description = "path_to_cred/file.json"
}

variable "project" {
  type        = string
  description = "panw-gcp-team-testing"
}

variable "region" {
  default = "us-central1"
  type    = string
}

variable "environment" {
  default     = "dev"
  description = "The environment name"
}

variable "location" {
  default = "us-central1c"
  type    = string
}