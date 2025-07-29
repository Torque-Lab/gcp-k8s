module "network" {
  source      = "../../modules/network"
  vpc_name    = "staging-vpc"
  subnet_name = "staging-subnet"
  cidr        = "10.10.0.0/24"
  region      = "us-central1"
  project     = "sitewach-386205"
}

module "gke" {
  source         = "../../modules/gke"
  cluster_name   = "staging-cluster"
  region         = "us-central1"
  zone           = ["us-central1"]
  node_count     = 1
  machine_type   = "e2-medium"
  min_node_count = 1
  max_node_count = 2
  network        = module.network.network
  subnet         = module.network.subnet
  node_pool_name = "staging-nodes"
  project = "sitewach-386205"
  disk_size_gb = 20
  disk_type = "pd-standard"

}