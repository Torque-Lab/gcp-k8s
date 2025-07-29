terraform {
  backend "gcs" {
    bucket  = "my-tf-states-backend"
    prefix  = "prod/gke/terraform.tfstate"
  }
}
