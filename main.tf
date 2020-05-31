/**
 * # ![Digital Ocean](do-logo.png) Droplet
 *
 * Purpose: Provision droplets in Digital Ocean.
 *
 * Rationale: Provide templates for Digital Ocean droplets.
 */
data "digitalocean_volume" "volumes" {
  count = length(var.volumes)
  name  = var.volumes[count.index]
}

resource "digitalocean_droplet" "droplet" {
  name               = var.name
  tags               = var.tags
  image              = var.image != null ? var.image : local.images[var.template_type]
  size               = var.size
  region             = var.region
  user_data          = base64encode(local.user_data[var.template_type])
  private_networking = var.private_networking
  monitoring         = var.monitoring
}

resource "digitalocean_volume_attachment" volumes {
  count      = length(var.volumes)
  droplet_id = digitalocean_droplet.droplet.id
  volume_id  = data.digitalocean_volume.volumes[count.index].id
}
