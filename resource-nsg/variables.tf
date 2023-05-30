variable "nsg-name" {
  type = string
}

variable "location" {
  type = string
}

variable "rg-name" {
  type = string
}

variable "tags" {
  description = "(OPTIONAL) Defaults to null"
  type        = map(string)
  default     = null
}