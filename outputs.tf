# VPC Outputs
output "this_vpc_id" {
  description = "The ID of the VPC."
  value       = alicloud_vpc.this.id
}

output "this_vpc_cidr_block" {
  description = "The CIDR block of the VPC."
  value       = alicloud_vpc.this.cidr_block
}

output "this_vpc_name" {
  description = "The name of the VPC."
  value       = alicloud_vpc.this.vpc_name
}

# VSwitch Outputs
output "this_vswitch_id" {
  description = "The ID of the VSwitch."
  value       = alicloud_vswitch.this.id
}

output "this_vswitch_cidr_block" {
  description = "The CIDR block of the VSwitch."
  value       = alicloud_vswitch.this.cidr_block
}

output "this_vswitch_zone_id" {
  description = "The availability zone ID of the VSwitch."
  value       = alicloud_vswitch.this.zone_id
}

# Hologres Instance Outputs
output "this_hologram_instance_id" {
  description = "The ID of the Hologres instance."
  value       = alicloud_hologram_instance.this.id
}

output "this_hologram_instance_name" {
  description = "The name of the Hologres instance."
  value       = alicloud_hologram_instance.this.instance_name
}

output "this_hologram_instance_type" {
  description = "The type of the Hologres instance."
  value       = alicloud_hologram_instance.this.instance_type
}

output "this_hologram_endpoints" {
  description = "The endpoints configuration of the Hologres instance."
  value       = alicloud_hologram_instance.this.endpoints
}

output "this_hologram_status" {
  description = "The status of the Hologres instance."
  value       = alicloud_hologram_instance.this.status
}