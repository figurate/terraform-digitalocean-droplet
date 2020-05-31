## Requirements

No requirements.

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| image | Name of the Droplet image | `string` | `"ubuntu-18-04-x64"` | no |
| name | Name of the droplet instance | `any` | n/a | yes |
| region | Digital Ocean region for the droplet instance | `any` | n/a | yes |
| size | Droplet instance size | `string` | `"s-1vcpu-1gb"` | no |
| tags | A list of tags attached to the droplet | `list(string)` | <pre>[<br>  "bastion"<br>]</pre> | no |
| template\_type | A predefined template type used to configure user data, etc. | `string` | `"bastion"` | no |
| timezone | Configured timezone for the droplet instance | `any` | n/a | yes |

## Outputs

No output.

