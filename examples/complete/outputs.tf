output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.hologres_olap.this_vpc_id
}

output "vswitch_id" {
  description = "The ID of the VSwitch"
  value       = module.hologres_olap.this_vswitch_id
}

output "hologram_instance_id" {
  description = "The ID of the Hologres instance"
  value       = module.hologres_olap.this_hologram_instance_id
}

output "hologram_instance_name" {
  description = "The name of the Hologres instance"
  value       = module.hologres_olap.this_hologram_instance_name
}

output "hologram_endpoints" {
  description = "The endpoints configuration of the Hologres instance"
  value       = module.hologres_olap.this_hologram_endpoints
}