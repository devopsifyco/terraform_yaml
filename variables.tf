variable "gitlab_token" {
  description = "pesonal token"
  type        = string
}

variable "visibility" {
  description = "can be private, internal, public"
  type        = string
  default     = "private"
}

variable "default_branch" {
  description = "default_branch"
  type        = string
  default     = "main"
}