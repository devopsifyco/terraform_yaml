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