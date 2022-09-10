output "project_ids" {
  value = gitlab_project.main.id
}

output "project_urls" {
  value = gitlab_project.main.http_url_to_repo
}