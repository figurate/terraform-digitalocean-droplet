data digitalocean_ssh_key ssh_key {
  name = var.ssh_key
}

module "droplet" {
  source = "../.."

  name          = var.name
  tags          = var.tags
  template_type = var.template_type
  template_context = {
    TimeZone             = var.timezone
    AuthorizedUserName   = var.ssh_user
    AuthorizedUserSSHKey = data.digitalocean_ssh_key.ssh_key.public_key
    ShutdownDelay        = var.shutdown_delay
  }
  image              = var.image
  size               = var.size
  region             = var.region
  private_networking = var.private_networking
  monitoring         = var.monitoring
  volumes            = var.volumes
}
