variable "project_membership" {
  description = <<EOF
    the map of project membership
    i.e the list looks as follows
    {
        "nguyentrungtinc4nh1516@gmail.com" = "AppOps"
        "tinhphamtrung00@gmail.com" = "Owner"
        "vubuivn@gmail.com" = "Mgmt"
    }
    EOF
  type        = map(any)
}

variable "project_id" {
  description = "project_id"
  type        = string
}