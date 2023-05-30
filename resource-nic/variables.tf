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
  description = "(OPTIONAL) Defaults to null"
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
  description = "The allocation method used for the Private IP Address. Possible values are Dynamic and Static. Defaults to Dynamic"
  type        = string
  default     = "Dynamic"
  validation {
    condition     = contains(["Dynamic", "Static"], var.private-ip-address-allocation)
    error_message = "Possible values are case sensitive Dynamic and Static."
  }
}

variable "public_ip_address_id" {
  type = string
}