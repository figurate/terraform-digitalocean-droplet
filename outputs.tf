output "droplet_id" {
  value = digitalocean_droplet.droplet.id
}

output "ipv4_address" {
  value = digitalocean_droplet.droplet.ipv4_address
}

output "ipv4_address_private" {
  value = digitalocean_droplet.droplet.ipv4_address_private
}
