provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dockingbay" {
  bucket_prefix = "docking-bay-storage-"

  tags = {
    Name                 = "Docking Bay"
    Environment          = "Dev"
    git_commit           = "9b0d64468b35b11ce216e052a198fedd6efb1d12"
    git_file             = "terraform/simple_instance/s3.tf"
    git_last_modified_at = "2023-06-20 01:45:53"
    git_last_modified_by = "tmprender@gmail.com"
    git_modifiers        = "tmprender"
    git_org              = "tmprender"
    git_repo             = "babygoat"
    yor_name             = "dockingbay"
    yor_trace            = "98826fa2-3a42-4058-914a-4404e4bf0530"
  }
}
