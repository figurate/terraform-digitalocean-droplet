module "droplet" {
  source = "../.."

  name          = var.name
  tags          = var.tags
  template_type = var.template_type
  template_context = {
    TimeZone = var.timezone
  }
  image  = var.image
  size   = var.size
  region = var.region
}
