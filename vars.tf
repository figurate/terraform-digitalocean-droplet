variable "name" {
  description = "Name of the droplet instance"
}

variable "tags" {
  description = "A list of tags attached to the droplet"
  type        = list(string)
  default     = []
}

variable "template_type" {
  description = "A predefined template type used to configure user data, etc."
}

variable "template_context" {
  description = "Additional contextual values relevant to the template user data"
  type        = map(string)
  default     = {}
}

variable "image" {
  description = "Name of the Droplet image"
  default     = "ubuntu-18-04-x64"
}

variable "size" {
  description = "Droplet instance size"
  default     = "s-1vcpu-1gb"
}

variable "region" {
  description = "Digital Ocean region for the droplet instance"
}

variable "private_networking" {
  description = "Enable private networking"
  default     = true
}

variable "monitoring" {
  description = "Enable monitoring"
  default     = true
}

variable "volumes" {
  description = "A list of volumes to attach to the droplet"
  default     = []
}

variable "floating_ips" {
  description = "A list of floating IP addresses to attach to the droplet"
  default     = []
}
