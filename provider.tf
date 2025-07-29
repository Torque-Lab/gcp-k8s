
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = "sitewach-386205"
  region  = "us-central1"
  credentials = file("~/.config/gcloud/application_default_credentials.json")
}
