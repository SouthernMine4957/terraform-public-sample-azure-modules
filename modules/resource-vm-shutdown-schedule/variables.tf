variable "location" {
  type = string
}

variable "virtual-machine-id" {
  description = "The resource ID of the target ARM-based Virtual Machine. Changing this forces a new resource to be created."
  type        = string
}

variable "is-enabled" {
  description = "(Optional) Whether to enable the schedule. Possible values are true and false. Defaults to true."
  type        = bool
  default     = true
}

variable "timezone" {
  description = "The time zone ID (e.g. Pacific Standard time). Refer to this guide https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/ for a full list of accepted time zone names."
  type        = string
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the resource."
  type        = map(string)
  default     = null
}

variable "daily-recurrence-time" {
  description = "The time each day when the schedule takes effect. Must match the format HHmm where HH is 00-23 and mm is 00-59 (e.g. 0930, 2300, etc.)"
  type        = number
}

variable "is-notification-enabled" {
  description = "Whether to enable pre-shutdown notifications. Possible values are true and false."
  type        = bool
}

variable "email" {
  description = "(Optional) E-mail address to which the notification will be sent."
  type        = string
  default     = null
}

variable "time-in-minutes" {
  description = "(Optional) Time in minutes between 15 and 120 before a shutdown event at which a notification will be sent. Defaults to 30."
  type        = number
  default     = null
}

variable "webhook-url" {
  description = "(Optional) The webhook URL to which the notification will be sent."
  type        = string
  default     = null
}