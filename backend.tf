terraform {
  backend "s3" {
    bucket = "terraform-tm-2026"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
  }
}

