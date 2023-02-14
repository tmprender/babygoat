provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dockingbay" {
  bucket_prefix = "docking-bay-storage-"

  tags = {
    Name                 = "Docking Bay"
    Environment          = "Dev"
    git_commit           = "dd6a60bc9bcbac12c3ff4e6ee7c5893b387332d5"
    git_file             = "terraform/simple_instance/s3.tf"
    git_last_modified_at = "2023-02-14 22:42:55"
    git_last_modified_by = "tmprender@gmail.com"
    git_modifiers        = "tmprender"
    git_org              = "tmprender"
    git_repo             = "babygoat"
    yor_trace            = "0b70d2c3-9bd8-46d9-9a05-d7136e899d78"
  }
}
