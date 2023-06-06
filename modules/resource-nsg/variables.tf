variable "name" {
  type = string
}

variable "location" {
  type = string
}

variable "rg-name" {
  type = string
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the resource."
  type        = map(string)
  default     = null
}