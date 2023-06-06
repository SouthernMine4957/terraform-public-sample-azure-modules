variable "name" {
  type = string
}

variable "rg-name" {
  type = string
}

variable "nsg-name" {
  type = string
}

variable "priority" {
  description = "Specifies the priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule."
  type        = number
  validation {
    condition     = var.priority >= 100 && var.priority <= 4096
    error_message = "The value can be between 100 and 4096."
  }
}

variable "direction" {
  description = "The direction specifies if rule will be evaluated on incoming or outgoing traffic. Possible values are Inbound and Outbound."
  type        = string
  validation {
    condition     = contains(["Inbound", "Outbound"], var.direction)
    error_message = "Possible values are case sensitive Inbound and Outbound"
  }
}

variable "access" {
  description = "Specifies whether network traffic is allowed or denied. Possible values are Allow and Deny."
  type        = string
  validation {
    condition     = contains(["Allow", "Deny"], var.access)
    error_message = "Possible values are case sensitive Allow and Deny."
  }
}

variable "protocol" {
  description = "Network protocol this rule applies to. Possible values include Tcp, Udp, Icmp, Esp, Ah or * (which matches all)."
  type        = string
  validation {
    condition     = contains(["Tcp", "Udp", "Icmp", "Esp", "Ah", "*"], var.protocol)
    error_message = "Possible values include case sensitive Tcp, Udp, Icmp, Esp, Ah or * (which matches all)."
  }
}

variable "source-port-range" {
  description = "(Optional) Source Port or Range. Integer or range between 0 and 65535 or * to match any. This is required if source_port_ranges is not specified."
  type        = string
  default     = null
  validation {
    condition     = var.source-port-ranges >= 0 && var.source-port-ranges <= 65535
    error_message = "Integer or range between 0 and 65535 or * to match any."
  }
}

variable "destination-port-range" {
  description = "(Optional) Destination Port or Range. Integer or range between 0 and 65535 or * to match any. This is required if destination_port_ranges is not specified."
  type        = string
  default     = null
  validation {
    condition     = var.destination-port-ranges >= 0 && var.destination-port-ranges <= 65535
    error_message = "Integer or range between 0 and 65535 or * to match any."
  }
}

variable "source-port-ranges" {
  description = "(Optional) List of source ports or port ranges. This is required if source_port_range is not specified."
  type        = list(number)
  default     = null
  validation {
    condition     = alltrue([for n in var.source-port-ranges : n >= 0 && n <= 65535])
    error_message = "Each integer or range between 0 and 65535."
  }
}

variable "destination-port-ranges" {
  description = "(Optional) List of destination ports or port ranges. This is required if destination_port_range is not specified."
  type        = list(number)
  default     = null
  validation {
    condition     = alltrue([for n in var.source-port-ranges : n >= 0 && n <= 65535])
    error_message = "Each integer or range between 0 and 65535."
  }
}

variable "source-address-prefix" {
  description = "(Optional) CIDR or source IP range or * to match any IP. Tags such as VirtualNetwork, AzureLoadBalancer and Internet can also be used. This is required if source_address_prefixes is not specified."
  type        = string
  default     = null
}

variable "destination-address-prefix" {
  description = "(Optional) CIDR or destination IP range or * to match any IP. Tags such as VirtualNetwork, AzureLoadBalancer and Internet can also be used. Besides, it also supports all available Service Tags like ‘Sql.WestEurope‘, ‘Storage.EastUS‘, etc. You can list the available service tags with the CLI: shell az network list-service-tags --location westcentralus. For further information please see Azure CLI - az network list-service-tags. This is required if destination_address_prefixes is not specified."
  type        = string
  default     = null
}

variable "source-address-prefixes" {
  description = "(Optional) List of source address prefixes. Tags may not be used. This is required if source_address_prefix is not specified."
  type        = string
  default     = null
}

variable "destination-address-prefixes" {
  description = "(Optional) List of destination address prefixes. Tags may not be used. This is required if destination_address_prefix is not specified."
  type        = string
  default     = null
}

variable "description" {
  type = string
}