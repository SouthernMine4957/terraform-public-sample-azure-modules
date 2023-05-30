variable "nic-name" {
  type = string
}

variable "location" {
  type = string
}

variable "rg-name" {
  type = string
}

variable "tags" {
  description = "OPTIONAL - Defaults to null"
  type        = map(string)
  default     = null
}

variable "ip-config-name" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "private-ip-address-allocation" {
  description = "Defaults to Dynamic"
  type        = string
  default     = "Dynamic"
}

variable "public_ip_address_id" {
  type = string
}