resource "digitalocean_kubernetes_cluster" "proto" {
  name    = "proto"
  region  = "sfo2"
  version = "1.13.4-do.0"

  node_pool {
    name       = "proto-nodes"
    size       = "s-1vcpu-2gb"
    node_count = 1
    tags = ["proto-nodes"]
  }
}
