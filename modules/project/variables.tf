variable "visibility" {
  description = "can be private, internal, public"
  type        = string
  default     = "private"
}

variable "description" {
  description = "description"
  type        = string
  default     = "crated by automation"
}

variable "default_branch" {
  description = "default_branch"
  type        = string
  default     = "main"
}

variable "group_path" {
  description = "group_path"
  type        = string
}

variable "project_name" {
  description = "projects_name"
  type        = string
}
