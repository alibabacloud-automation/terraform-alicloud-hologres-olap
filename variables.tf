# VPC Configuration
variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC. Example: 192.168.0.0/16"
  type        = string
  default     = "192.168.0.0/16"
}

variable "vpc_name" {
  description = "The name of the VPC."
  type        = string
  default     = "hologres-olap-vpc"
}

# VSwitch Configuration
variable "vswitch_cidr_block" {
  description = "The CIDR block for the VSwitch. Must be a subset of the VPC CIDR block."
  type        = string
  default     = "192.168.0.0/24"
}

variable "vswitch_name" {
  description = "The name of the VSwitch."
  type        = string
  default     = "hologres-olap-vswitch"
}

variable "zone_id" {
  description = "The availability zone ID where resources will be created. Example: cn-hangzhou-j"
  type        = string
}

# Hologres Instance Configuration
variable "hologram_instance_type" {
  description = "The type of the Hologres instance. Valid values: Standard, Follower."
  type        = string
  default     = "Standard"
}

variable "hologram_payment_type" {
  description = "The payment type of the Hologres instance. Valid values: PayAsYouGo, Subscription."
  type        = string
  default     = "PayAsYouGo"
}

variable "hologram_pricing_cycle" {
  description = "The pricing cycle of the Hologres instance. Valid values: Hour, Month."
  type        = string
  default     = "Hour"
}

variable "hologram_cpu" {
  description = "The number of CPU cores for the Hologres instance."
  type        = number
  default     = 32
}

variable "hologram_instance_name" {
  description = "The name of the Hologres instance."
  type        = string
  default     = "hologres-olap-instance"
}