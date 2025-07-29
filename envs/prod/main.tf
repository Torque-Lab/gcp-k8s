module "network" {
  source      = "../../modules/network"
  vpc_name    = "prod-k8s-vpc"
  subnet_name = "prod-subnet"
  cidr        = "10.10.0.0/16"
  region      = "us-central1"
  project     = "sitewach-386205"
}

module "gke" {
  source         = "../../modules/gke"
  cluster_name   = "prod-k8s-cluster"
  region         = "us-central1"
  zone           = ["us-central1"]
  node_count     = 1
  machine_type   = "e2-medium"
  min_node_count = 1
  max_node_count = 2
  network        = module.network.network
  subnet         = module.network.subnet
  node_pool_name = "prod-nodes"
  project = "sitewach-386205"
  disk_size_gb = 20

}