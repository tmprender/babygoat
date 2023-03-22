provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dockingbay" {
  bucket_prefix = "docking-bay-storage-"

  tags = {
    Name                 = "Docking Bay"
    Environment          = "Dev"
    git_commit           = "98247b754a23f71bc01bbf686ab0c84ed455fc19"
    git_file             = "terraform/simple_instance/s3.tf"
    git_last_modified_at = "2023-03-22 16:19:56"
    git_last_modified_by = "tmprender@gmail.com"
    git_modifiers        = "tmprender"
    git_org              = "tmprender"
    git_repo             = "babygoat"
    yor_trace            = "f0b0f8c5-2e3c-4e46-8607-d321d495738b"
  }
}
