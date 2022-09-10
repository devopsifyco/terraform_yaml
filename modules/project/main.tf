
data "gitlab_group" "project_group" {
  full_path = var.group_path
}

resource "gitlab_project" "main" {
  name             = var.project_name
  path             = urlencode(var.project_name)
  namespace_id     = data.gitlab_group.project_group.id
  description      = var.description
  visibility_level = var.visibility
  default_branch   = var.default_branch
}

resource "gitlab_branch_protection" "project_master" {
  project                = gitlab_project.main.id
  branch                 = "master"
  merge_access_level     = "maintainer"
  push_access_level      = "maintainer"
  unprotect_access_level = "maintainer"
  depends_on             = [gitlab_project.main]
}