# ![Digital Ocean](do-logo.png) Droplet

[![CI](https://github.com/figurate/terraform-digitalocean-droplet/actions/workflows/main.yml/badge.svg)](https://github.com/figurate/terraform-digitalocean-droplet/actions/workflows/main.yml)

Purpose: Provision droplets in Digital Ocean.

Rationale: Provide templates for Digital Ocean droplets.

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| digitalocean | n/a |
| template | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| floating\_ips | A list of floating IP addresses to attach to the droplet | `list` | `[]` | no |
| image | Name of the Droplet image | `string` | `"ubuntu-18-04-x64"` | no |
| monitoring | Enable monitoring | `bool` | `true` | no |
| name | Name of the droplet instance | `any` | n/a | yes |
| private\_networking | Enable private networking | `bool` | `true` | no |
| region | Digital Ocean region for the droplet instance | `any` | n/a | yes |
| size | Droplet instance size | `string` | `"s-1vcpu-1gb"` | no |
| tags | A list of tags attached to the droplet | `list(string)` | `[]` | no |
| template\_context | Additional contextual values relevant to the template user data | `map(string)` | `{}` | no |
| template\_type | A predefined template type used to configure user data, etc. | `any` | n/a | yes |
| volumes | A list of volumes to attach to the droplet | `list` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| droplet\_id | n/a |
| ipv4\_address | n/a |
| ipv4\_address\_private | n/a |

