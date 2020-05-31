resource "digitalocean_droplet" "droplet" {
  name      = var.name
  tags      = var.tags
  image     = var.image != null ? var.image : local.images[var.template_type]
  size      = var.size
  region    = var.region
  user_data = base64encode(local.user_data[var.template_type])
}
