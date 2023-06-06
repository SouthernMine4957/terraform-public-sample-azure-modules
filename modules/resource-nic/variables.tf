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

variable "dns-servers" {
  description = "(Optional) A list of IP Addresses defining the DNS Servers which should be used for this Network Interface. Configuring DNS Servers on the Network Interface will override the DNS Servers defined on the Virtual Network."
  type        = list(string)
  default     = null
}

variable "edge-zone" {
  description = "(Optional) Specifies the Edge Zone within the Azure Region where this Network Interface should exist. Changing this forces a new Network Interface to be created."
  type        = string
  default     = null
}

variable "enable-ip-forwarding" {
  description = "(Optional) Should IP Forwarding be enabled? Defaults to false."
  type        = bool
  default     = false
}

variable "enable-accelerated-networking" {
  description = "(Optional) Should Accelerated Networking be enabled? Defaults to false."
  type        = bool
  default     = false
}

variable "internal-dns-name-label" {
  description = "(Optional) The (relative) DNS Name used for internal communications between Virtual Machines in the same Virtual Network."
  type        = string
  default     = null
}

variable "ip-config-name" {
  type = string
}

variable "gateway-load-balancer-frontend-ip-configuration-id" {
  description = "(Optional) The Frontend IP Configuration ID of a Gateway SKU Load Balancer."
  type        = string
}

variable "subnet_id" {
  description = "(Optional) The ID of the Subnet where this Network Interface should be located in."
  type        = string
}

variable "private-ip-address-version" {
  description = "(Optional) The IP Version to use. Possible values are IPv4 or IPv6. Defaults to IPv4."
  type        = string
  default     = "IPv4"
  validation {
    condition     = contains(["IPv4", "IPv6"], var.private-ip-address-version)
    error_message = "Possible values are case sensitive IPv4 and IPv6."
  }
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

variable "public-ip-address_id" {
  description = "(Optional) Reference to a Public IP Address to associate with this NIC"
  type        = string
}

variable "primary" {
  description = "(Optional) Is this the Primary IP Configuration? Must be true for the first ip_configuration when multiple are specified. Defaults to false."
  type        = bool
}

variable "private-ip-address" {
  description = "(Optional) The Static IP Address which should be used when private_ip_address_allocation is set to Static"
  type        = string
}