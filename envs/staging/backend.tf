terraform {
  backend "gcs" {
    bucket  = "my-tf-states-backend"
    prefix  = "staging/gke/terraform.tfstate"
  }
}
