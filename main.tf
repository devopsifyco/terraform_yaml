terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "3.16.1"
    }

    tfe = {
      version = "~> 0.35.0"
    }

  }
}

# Configure the GitLab Provider
provider "gitlab" {
  token = var.gitlab_token
}

locals {
  get_all_yaml = fileset(path.module, "template/*.yml")
  read_yaml    = flatten([for yaml in local.get_all_yaml : yamldecode(file(yaml))["Gitlab"]]) # this converts all the queues into a list of maps
  # i.e the list looks as follows
  # [
  #     "group_id" = "57106689"
  #     "manager_email" = "vubuivn@gmail.com"
  #     "member" = [
  #       {
  #         "email" = "tinhphamtrung04@gmail.com"
  #         "role" = "AppOps"
  #       },
  #     ]
  #     "owner_email" = "tinhphamtrung00@gmail.com"
  #     "project_name" = "example-queue-dlq"
  #   },
  # ...

  projects = flatten([for resource_info in local.read_yaml :
    {
      "project_name" = resource_info.project_name
      "group_path"   = lookup(resource_info, "group_path", "quannhm")
      "description"  = lookup(resource_info, "description", "ahihihih")
    }
  ])
  # i.e the list looks as follows
  # [
  #   {
  #     "group_id" = "57106689"
  #     "project_name" = "project-one"
  #   },
  #   {
  #     "group_id" = "57106689"
  #     "project_name" = "project-two"
  #   },
  # ...
  project_memberships = flatten([for resource_info in local.read_yaml :
    {
      for user_name in resource_info.member : user_name.username => [user_name.role, user_name.expires_at]
    }
  ])
  # i.e the list looks as follows
  #   {
  #     "tinhphamtrung00" = [
  #       "Security",
  #       "2022-12-31",
  #     ]
  #     "vubuivn" = [
  #       "Mgmt",
  #       "2022-12-31",
  #     ]
  #   },
}


module "create_project" {
  source = "./modules/project"
  for_each = {
    for obj in local.projects : obj.project_name => obj
  }
  project_name = each.value.project_name
  group_path   = each.value.group_path
  description  = each.value.description
}

locals {
  projec_ids = {
    for index, obj in module.create_project : index => values(obj)
  }
  # before
  # {
  #   "project-one" = {
  #     "project_ids" = "a"
  #     "project_urls" = "b"
  #   }
  # }
  # the output of module "create_project" looks as follows
  # Changes to Outputs:
  # {
  #   "project-one" = [
  #     "a",
  #     "b",
  #   ]
  # }

  project_membership_with_proj = {
    for index, obj in local.projects : obj.project_name => local.project_memberships[index]
  }
}

module "invitation_users" {
  source             = "./modules/invitation_users"
  for_each           = local.project_membership_with_proj
  project_membership = each.value
  project_id         = lookup(local.projec_ids, each.key)[0]
  depends_on = [
    module.create_project,
    local.projec_ids,
    local.project_membership_with_proj
  ]
}
