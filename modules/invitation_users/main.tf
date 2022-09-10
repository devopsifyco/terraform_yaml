locals {
  gitlab_access_level = {
    Owner    = "maintainer"
    AppOps   = "developer"
    Security = "reporter"
    Mgmt     = "maintainer"
    CloudOps = "maintainer"
  }
}
data "gitlab_user" "user_id" {
  for_each    = var.project_membership
  username    = each.key
}

resource "gitlab_project_membership" "main" {
  for_each     = var.project_membership
  project_id   = var.project_id
  user_id      = data.gitlab_user.user_id[each.key].user_id
  access_level = lookup(local.gitlab_access_level, each.value[0]) // guest, reporter, developer, maintainer, owner, master
  expires_at   = each.value[1]
}

