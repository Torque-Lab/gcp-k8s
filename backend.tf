terraform {
  backend "gcs" {
    bucket  = "my-tf-states-backend"
    prefix  = "gke/terraform.tfstate"
  }
}

