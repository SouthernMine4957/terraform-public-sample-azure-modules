variable "security-rule-name" {
  type = string
}

variable "rg-name" {
  type = string
}

variable "nsg-name" {
  type = string
}

variable "security-rule-priority" {
  description = "Specifies the priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule."
  type        = number
  validation {
    condition     = var.security-rule-priority >= 100 && var.security-rule-priority <= 4096
    error_message = "The value can be between 100 and 4096."
  }
}

variable "security-rule-direction" {
  description = "The direction specifies if rule will be evaluated on incoming or outgoing traffic. Possible values are Inbound and Outbound."
  type        = string
  validation {
    condition     = contains(["Inbound", "Outbound"], var.security-rule-direction)
    error_message = "Possible values are case sensitive Inbound and Outbound"
  }
}

variable "security-rule-access" {
  description = "Specifies whether network traffic is allowed or denied. Possible values are Allow and Deny."
  type        = string
  validation {
    condition     = contains(["Allow", "Deny"], var.security-rule-access)
    error_message = "Possible values are case sensitive Allow and Deny."
  }
}

variable "security-rule-protocol" {
  description = "Network protocol this rule applies to. Possible values include Tcp, Udp, Icmp, Esp, Ah or * (which matches all)."
  type        = string
  validation {
    condition     = contains(["Tcp", "Udp", "Icmp", "Esp", "Ah", "*"], var.security-rule-protocol)
    error_message = "Possible values include case sensitive Tcp, Udp, Icmp, Esp, Ah or * (which matches all)."
  }
}

variable "security-rule-source-port-range-count" {
  
}

variable "security-rule-destination-port-range-count" {
  
}

variable "security-rule-source-port-range" {
  description = "(Optional) Source Port or Range. Integer or range between 0 and 65535 or * to match any. This is required if source_port_ranges is not specified."
  type        = string
  validation {
    condition     = var.security-rule-source-port-ranges >= 0 && var.security-rule-source-port-ranges <= 65535
    error_message = "Integer or range between 0 and 65535 or * to match any."
  }
}

variable "security-rule-destination-port-range" {
  description = "(Optional) Destination Port or Range. Integer or range between 0 and 65535 or * to match any. This is required if destination_port_ranges is not specified."
  type        = string
  validation {
    condition     = var.security-rule-destination-port-ranges >= 0 && var.security-rule-destination-port-ranges <= 65535
    error_message = "Integer or range between 0 and 65535 or * to match any."
  }
}

variable "security-rule-source-port-ranges" {
  description = "(Optional) List of source ports or port ranges. This is required if source_port_range is not specified."
  type        = list(string)
#   validation {
#     condition     = var.security-rule-source-port-ranges >= 0 && var.security-rule-source-port-ranges <= 65535
#     error_message = "Integer or range between 0 and 65535 or * to match any."
#   }
}

variable "security-rule-destination-port-ranges" {
  description = "(Optional) List of destination ports or port ranges. This is required if destination_port_range is not specified."
  type        = list(string)
#   validation {
#     condition     = var.security-rule-destination-port-ranges >= 0 && var.security-rule-destination-port-ranges <= 65535
#     error_message = "Integer or range between 0 and 65535 or * to match any."
#   }
}

variable "security-rule-source-address-prefix" {
  description = "(Optional) CIDR or source IP range or * to match any IP. Tags such as VirtualNetwork, AzureLoadBalancer and Internet can also be used. This is required if source_address_prefixes is not specified."
}

variable "security-rule-destination-address-prefix" {

}

variable "security-rule-description" {
  type = string
}