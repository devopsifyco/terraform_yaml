<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | 3.16.1 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.35.0 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.35.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | 3.16.1 |
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | ~> 0.35.0 ~> 0.35.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [gitlab_repository_file.main](https://registry.terraform.io/providers/gitlabhq/gitlab/3.16.1/docs/resources/repository_file) | resource |
| [tfe_workspace.test](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [gitlab_project.main](https://registry.terraform.io/providers/gitlabhq/gitlab/3.16.1/docs/data-sources/project) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_gitlab_namespace"></a> [gitlab\_namespace](#input\_gitlab\_namespace) | path namespace with project name | `string` | `""` | no |
| <a name="input_gitlab_token"></a> [gitlab\_token](#input\_gitlab\_token) | pesonal token | `string` | `""` | no |
| <a name="input_hostname"></a> [hostname](#input\_hostname) | n/a | `string` | `""` | no |
| <a name="input_organization"></a> [organization](#input\_organization) | n/a | `string` | `""` | no |
| <a name="input_token"></a> [token](#input\_token) | n/a | `string` | `""` | no |
| <a name="input_workspace"></a> [workspace](#input\_workspace) | n/a | `string` | `""` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->