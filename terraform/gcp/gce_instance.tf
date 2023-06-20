data "google_compute_zones" "zones" {}

resource "google_compute_instance" "server" {
  machine_type = "n1-standard-1"
  name         = "terragoat-${var.environment}-machine"
  zone         = data.google_compute_zones.zones.names[0]
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
    auto_delete = true
  }
  network_interface {
    subnetwork = google_compute_subnetwork.public-subnetwork.name
    access_config {}
  }
  can_ip_forward = true

  metadata = {
    block-project-ssh-keys = true
    block-project-ssh-keys = false
    enable-oslogin         = false
    serial-port-enable     = true
  }
  labels = {
    git_commit           = "8721d10ff155b3f6992509fd9ba958e1baed2a02"
    git_file             = "terraform__gcp__gce_instance_tf"
    git_last_modified_at = "2023-02-06-23-42-49"
    git_last_modified_by = "tprendervill"
    git_modifiers        = "tprendervill"
    git_org              = "tmprender"
    git_repo             = "babygoat"
    yor_trace            = "a9c2cdb8-fc27-41b7-9e2f-3dc603352731"
    yor_name             = "server"
  }
}
resource "google_compute_disk" "unencrypted_disk" {
  name = "terragoat-${var.environment}-disk"

  labels = {
    git_commit           = "8721d10ff155b3f6992509fd9ba958e1baed2a02"
    git_file             = "terraform__gcp__gce_instance_tf"
    git_last_modified_at = "2023-02-06-23-42-49"
    git_last_modified_by = "tprendervill"
    git_modifiers        = "tprendervill"
    git_org              = "tmprender"
    git_repo             = "babygoat"
    yor_trace            = "c2cb2298-85b6-4706-918c-9bf58e1b4541"
    yor_name             = "unencrypted_disk"
  }
}