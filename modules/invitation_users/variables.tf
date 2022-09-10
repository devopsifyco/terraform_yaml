variable "project_membership" {
  description = <<EOF
    the map of project membership
    i.e the list looks as follows
    {
        "abc" = "AppOps"
        "xyz = "Owner"
        "xxx" = "Mgmt"
    }
    EOF
  type        = map(any)
}

variable "project_id" {
  description = "project_id"
  type        = string
}