provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dockingbay" {
  bucket_prefix = "docking-bay-storage-"

  tags = {
    Name                 = "Docking Bay"
    Environment          = "Dev"
    git_commit           = "bf5d1f2e5ccd94f207fa208d5969b5312ce23868"
    git_file             = "terraform/simple_instance/s3.tf"
    git_last_modified_at = "2023-03-22 16:28:38"
    git_last_modified_by = "tmprender@gmail.com"
    git_modifiers        = "tmprender"
    git_org              = "tmprender"
    git_repo             = "babygoat"
    yor_trace            = "b50c0a14-c320-42ee-bb95-37be8707f804"
  }
}
