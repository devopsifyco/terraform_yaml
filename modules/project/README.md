<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | 3.16.1 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.35.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | 3.16.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [gitlab_branch_protection.project_master](https://registry.terraform.io/providers/gitlabhq/gitlab/3.16.1/docs/resources/branch_protection) | resource |
| [gitlab_project.main](https://registry.terraform.io/providers/gitlabhq/gitlab/3.16.1/docs/resources/project) | resource |
| [gitlab_group.project_group](https://registry.terraform.io/providers/gitlabhq/gitlab/3.16.1/docs/data-sources/group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_branch"></a> [default\_branch](#input\_default\_branch) | default\_branch | `string` | `"main"` | no |
| <a name="input_description"></a> [description](#input\_description) | description | `string` | `"crated by automation"` | no |
| <a name="input_group_path"></a> [group\_path](#input\_group\_path) | group\_path | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | projects\_name | `string` | n/a | yes |
| <a name="input_visibility"></a> [visibility](#input\_visibility) | can be private, internal, public | `string` | `"private"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_project_ids"></a> [project\_ids](#output\_project\_ids) | n/a |
| <a name="output_project_urls"></a> [project\_urls](#output\_project\_urls) | n/a |
<!-- END_TF_DOCS -->