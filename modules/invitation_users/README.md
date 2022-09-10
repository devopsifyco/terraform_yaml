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
| [gitlab_project_membership.main](https://registry.terraform.io/providers/gitlabhq/gitlab/3.16.1/docs/resources/project_membership) | resource |
| [gitlab_user.user_id](https://registry.terraform.io/providers/gitlabhq/gitlab/3.16.1/docs/data-sources/user) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | project\_id | `string` | n/a | yes |
| <a name="input_project_membership"></a> [project\_membership](#input\_project\_membership) | the map of project membership<br>    i.e the list looks as follows<br>    {<br>        "nguyentrungtinc4nh1516@gmail.com" = "AppOps"<br>        "tinhphamtrung00@gmail.com" = "Owner"<br>        "vubuivn@gmail.com" = "Mgmt"<br>    } | `map(any)` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->