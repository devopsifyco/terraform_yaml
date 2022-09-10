<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | 3.16.1 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.35.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_create_project"></a> [create\_project](#module\_create\_project) | ./modules/project | n/a |
| <a name="module_invitation_users"></a> [invitation\_users](#module\_invitation\_users) | ./modules/invitation_users | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_branch"></a> [default\_branch](#input\_default\_branch) | default\_branch | `string` | `"main"` | no |
| <a name="input_gitlab_token"></a> [gitlab\_token](#input\_gitlab\_token) | pesonal token | `string` | n/a | yes |
| <a name="input_visibility"></a> [visibility](#input\_visibility) | can be private, internal, public | `string` | `"private"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_module"></a> [module](#output\_module) | n/a |
| <a name="output_project_id"></a> [project\_id](#output\_project\_id) | n/a |
<!-- END_TF_DOCS -->