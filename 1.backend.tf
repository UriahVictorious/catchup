# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "catchup-bucket"
    prefix = "terraform/state"
    credentials = "uriah-project-2-711a687abdbc.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}
