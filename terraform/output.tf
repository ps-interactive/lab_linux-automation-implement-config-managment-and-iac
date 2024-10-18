output "ip_addresses" {
  value = [for net in docker_container.apache.network_data : lookup(net, "ip_address", "")]
}