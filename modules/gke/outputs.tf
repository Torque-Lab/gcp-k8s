output "cluster" {
  value = google_container_cluster.my-gke-cluster.name
}

output "node_pool" {
  value = google_container_node_pool.node_pool.name
}