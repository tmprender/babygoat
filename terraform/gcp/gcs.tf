resource "google_storage_bucket" "terragoat_website" {
  name          = "terragot-${var.environment}"
  location      = var.region
  force_destroy = true
  #   labels = {
  #     git_file             = "terraform__gcp__gcs_tf"
  #     git_org              = "tmprender"
  #     git_repo             = "terragoat"
  #     yor_trace            = "bd00cd2e-f53f-4daf-8d4d-74c47846c1cc"
  #   }
  labels = {
    git_commit           = "8721d10ff155b3f6992509fd9ba958e1baed2a02"
    git_file             = "terraform__gcp__gcs_tf"
    git_last_modified_at = "2023-02-06-23-42-49"
    git_last_modified_by = "tprendervill"
    git_modifiers        = "tprendervill"
    git_org              = "tmprender"
    git_repo             = "babygoat"
    yor_trace            = "7eaa4298-9c57-4346-b03f-95314f6cb36f"
  }
}

resource "google_storage_bucket_iam_binding" "allow_public_read" {
  bucket  = google_storage_bucket.terragoat_website.id
  members = ["allUsers"]
  role    = "roles/storage.objectViewer"
}