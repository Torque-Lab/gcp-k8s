variable "project" {
  type        = string
  description = "Project"
  default     = "sitewach-386205"
}
variable "region" {
  type        = string
  description = "Region"
  default     = "us-central1" 
}

variable "zone" {
  type        = list(string)
  description = "Zone"
  default     = ["us-central1-a"]
}

variable "cluster_name" {
  type        = string
  description = "Name of the GKE cluster"
  default     = "my-gke-cluster"
}

variable "network" {
  type        = string
  description = "Network"
}

variable "subnet" {
  type        = string
  description = "Subnet"
}

variable "machine_type" {
  type        = string
  description = "Machine type"
  default     = "e2-medium"
}
variable "initial_node_count" {
  type        = number
  description = "Initial node count"
  default     = 1
}
variable "node_count" {
  type        = number
  description = "Initial node count"
  default     = 1
}

variable "min_node_count" {
  type        = number
  description = "Minimum number of nodes in the pool"
  default     = 1
}

variable "max_node_count" {
  type        = number
  description = "Maximum number of nodes in the pool"
  default     = 3
}

variable "disk_size_gb" {
  type        = number
  description = "Disk size in GB"
  default     = 20
}
variable "disk_type" {
  type        = string
  description = "Disk type"
  default     = "pd-standard"
}
variable "node_pool_name" {
  type        = string
  description = "Node pool name"
  default     = "prod-nodes"
}

variable "enable_private_nodes" {
  type        = bool
  description = "Whether to enable private nodes"
  default     = true
}

variable "enable_private_endpoint" {
  type        = bool
  description = "Whether to enable private endpoint"
  default     = false
}

variable "master_ipv4_cidr_block" {
  type        = string
  description = "The IP range in CIDR notation to use for the hosted master network"
  default     = "172.16.0.0/28"
}

