data "template_file" "cloud-init-bastion" {
  template = file("${path.module}/templates/cloud-init/bastion.yml")
  vars = {
    TimeZone = var.template_context["TimeZone"]
  }
}
