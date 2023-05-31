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

variable "allocation-method" {
  description = "Defines the allocation method for this IP address. Possible values are Static or Dynamic."
  type        = string
  validation {
    condition     = contains(["Dynamic", "Static"], var.allocation-method)
    error_message = "Possible values are case sensitive Dynamic and Static."
  }
}

variable "zones" {
  description = "(Optional) A collection containing the availability zone to allocate the Public IP in. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "ddos-protection-mode" {
  description = "(Optional) The DDoS protection mode of the public IP. Possible values are Disabled, Enabled, and VirtualNetworkInherited. Defaults to VirtualNetworkInherited."
  type        = string
  default     = "VirtualNetworkInherited"
  validation {
    condition     = contains(["Disabled", "Enabled", "VirtualNetworkInherited"], var.ddos-protection-mode)
    error_message = "Possible values are case sensitive Disabled, Enabled, and VirtualNetworkInherited."
  }
}

variable "ddos-protection-plan-id" {
  description = "(Optional) The ID of DDoS protection plan associated with the public IP."
  type        = string
  default     = null
}

variable "domain-name-label" {
  description = "(Optional) Label for the Domain Name. Will be used to make up the FQDN. If a domain name label is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system."
  type        = string
  default     = null
}

variable "edge-zone" {
  description = "(Optional) Specifies the Edge Zone within the Azure Region where this Public IP should exist. Changing this forces a new Public IP to be created."
  type        = string
  default     = null
}

variable "idle-timeout-in-minutes" {
  description = "(Optional) Specifies the timeout for the TCP idle connection. The value can be set between 4 and 30 minutes."
  type        = number
  default     = null
}

variable "ip-tags" {
  description = "(Optional) A mapping of IP tags to assign to the public IP. Changing this forces a new resource to be created. IP Tag RoutingPreference requires multiple zones and Standard SKU to be set."
  type        = string
  default     = null
}

variable "ip-version" {
  description = "(Optional) The IP Version to use, IPv6 or IPv4. Changing this forces a new resource to be created. Only static IP address allocation is supported for IPv6."
  type        = string
  default     = null
  validation {
    condition     = contains(["IPv4", "IPv6"], var.ip-version)
    error_message = "Possible values are case sensitive IPv4 and IPv6."
  }
}

variable "public-ip-prefix-id" {
  description = "(Optional) If specified then public IP address allocated will be provided from the public IP prefix resource. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "reverse-fqdn" {
  description = "(Optional) A fully qualified domain name that resolves to this public IP address. If the reverseFqdn is specified, then a PTR DNS record is created pointing from the IP address in the in-addr.arpa domain to the reverse FQDN."
  type        = string
  default     = null
}

variable "sku" {
  description = "(Optional) The SKU of the Public IP. Accepted values are Basic and Standard. Defaults to Basic. Changing this forces a new resource to be created. Public IP Standard SKUs require allocation_method to be set to Static."
  type        = string
  default     = "Basic"
  validation {
    condition     = contains(["Basic", "Standard"], var.sku)
    error_message = "Possible values are case sensitive Basic and Standard."
  }
}

variable "sku-tier" {
  description = "(Optional) The SKU Tier that should be used for the Public IP. Possible values are Regional and Global. Defaults to Regional. Changing this forces a new resource to be created. When sku_tier is set to Global, sku must be set to Standard."
  type        = string
  default     = "Regional"
  validation {
    condition     = contains(["Regional", "Global"], var.sku)
    error_message = "Possible values are case sensitive Regional and Global."
  }
}