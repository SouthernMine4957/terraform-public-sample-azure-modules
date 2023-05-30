variable "name" {
  type = string
}

variable "scope" {
  description = "Specifies the ID of the scope at which the Management Lock should be created. Changing this forces a new resource to be created."
  type        = string
}

variable "lock-level" {
  description = "Specifies the Level to be used for this Lock. Possible values are CanNotDelete and ReadOnly. Changing this forces a new resource to be created."
  type        = string
  validation {
    condition     = contains(["CanNotDelete", "ReadOnly"], var.lock-level)
    error_message = "Possible values are case sensitive CanNotDelete and ReadOnly."
  }
}

variable "notes" {
  description = "(Optional) Specifies some notes about the lock. Maximum of 512 characters. Changing this forces a new resource to be created."
  type        = string
}