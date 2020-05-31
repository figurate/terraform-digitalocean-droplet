locals {
  user_data = {
    bastion = data.template_file.cloud-init-bastion.rendered
  }

  images = {
    bastion = "ubuntu-18-04-x64"
  }
}
