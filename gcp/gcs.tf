resource "google_storage_bucket" "terragoat_website" {
  name          = "terragot-${var.environment}"
  location      = var.location
  force_destroy = true
#   labels = {
#     git_file             = "terraform__gcp__gcs_tf"
#     git_org              = "tmprender"
#     git_repo             = "terragoat"
#     yor_trace            = "bd00cd2e-f53f-4daf-8d4d-74c47846c1cc"
#   }
}

resource "google_storage_bucket_iam_binding" "allow_public_read" {
  bucket  = google_storage_bucket.terragoat_website.id
  members = ["allUsers"]
  role    = "roles/storage.objectViewer"
}