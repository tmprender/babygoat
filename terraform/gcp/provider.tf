provider "google" {
  credentials = var.gcp_creds
  project = var.project
  region  = var.region
}


# terraform {
#   backend "gcs" {
#     credentials = var.credentials_path
#     prefix      = "terragoat/${var.environment}"
#   }
# }