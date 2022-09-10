output "project_id" {
  value = local.projec_ids
  depends_on = [
    module.create_project
  ]
}

output "module" {
  value = module.create_project
}