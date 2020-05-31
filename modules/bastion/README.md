## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| digitalocean | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| image | Name of the Droplet image | `string` | `"ubuntu-18-04-x64"` | no |
| monitoring | Enable monitoring | `bool` | `true` | no |
| name | Name of the droplet instance | `any` | n/a | yes |
| private\_networking | Enable private networking | `bool` | `true` | no |
| region | Digital Ocean region for the droplet instance | `any` | n/a | yes |
| shutdown\_delay | Number of minutes before the host will automatically shutdown | `number` | `60` | no |
| size | Droplet instance size | `string` | `"s-1vcpu-1gb"` | no |
| ssh\_key | Identifier of public key file for SSH access to droplets | `any` | n/a | yes |
| ssh\_user | Username for bastion SSH user | `any` | n/a | yes |
| tags | A list of tags attached to the droplet | `list(string)` | <pre>[<br>  "bastion"<br>]</pre> | no |
| template\_type | A predefined template type used to configure user data, etc. | `string` | `"bastion"` | no |
| timezone | Configured timezone for the droplet instance | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| droplet\_id | n/a |
| ipv4\_address | n/a |
| ipv4\_address\_private | n/a |

