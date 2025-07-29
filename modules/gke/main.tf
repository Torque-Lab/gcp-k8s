resource "google_container_cluster" "my-gke-cluster" {
  project    = var.project
  name       = var.cluster_name
  location   = var.zone[0]
  #location = "us-central1-a"  #  Zonal cluster do this for zone cluster
  #location = "us-central1"  #  Regional cluster do this for region cluster
  remove_default_node_pool = true
  initial_node_count   = var.node_count
  network    = var.network
  subnetwork = var.subnet
  networking_mode = "VPC_NATIVE"
  
  private_cluster_config {
    enable_private_nodes    = var.enable_private_nodes
    enable_private_endpoint = var.enable_private_endpoint
    master_ipv4_cidr_block = var.master_ipv4_cidr_block
  
  }

}

resource "google_container_node_pool" "node_pool" {
  name       = var.node_pool_name
  project    = var.project
  location   = var.zone[0]
  node_locations = var.zone
  cluster    = google_container_cluster.my-gke-cluster.name
  node_count = var.node_count
  node_config {
    disk_size_gb = var.disk_size_gb
    disk_type = var.disk_type
    machine_type = var.machine_type
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  
  }


  autoscaling {
    min_node_count = var.min_node_count
    max_node_count = var.max_node_count
  }

  management {
    auto_upgrade = true
    auto_repair  = true
  }

}
