resource "google_sql_database_instance" "master_instance" {
  name             = "terragoat-${var.environment}-master"
  database_version = "POSTGRES_11"
  region           = var.region

  settings {
    tier = "db-f1-micro"
    ip_configuration {
      ipv4_enabled = true
      authorized_networks {
        name  = "WWW"
        value = "0.0.0.0/0"
      }
    }
    backup_configuration {
      enabled = false
    }
  }
}

resource "google_bigquery_dataset" "dataset" {
  dataset_id = "terragoat_${var.environment}_dataset"
  access {
    special_group = "allAuthenticatedUsers"
    role          = "READER"
  }
  labels = {
    git_file             = "terraform__gcp__big_data_tf"
    git_org              = "tmprender"
    git_repo             = "babygoat"
    yor_trace            = "2560d883-bc3a-4cb6-b9fc-fb666edf626e"
    git_commit           = "8721d10ff155b3f6992509fd9ba958e1baed2a02"
    git_last_modified_at = "2023-02-06-23-42-49"
    git_last_modified_by = "tprendervill"
    git_modifiers        = "tprendervill"
    yor_name             = "dataset"
  }
}