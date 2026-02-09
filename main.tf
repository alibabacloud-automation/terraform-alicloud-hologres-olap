# Create VPC for Hologres OLAP platform
resource "alicloud_vpc" "this" {
  cidr_block = var.vpc_cidr_block
  vpc_name   = var.vpc_name
}

# Create VSwitch in the VPC
resource "alicloud_vswitch" "this" {
  vpc_id       = alicloud_vpc.this.id
  cidr_block   = var.vswitch_cidr_block
  zone_id      = var.zone_id
  vswitch_name = var.vswitch_name
}

# Create Hologres instance for OLAP analysis
resource "alicloud_hologram_instance" "this" {
  instance_type = var.hologram_instance_type
  zone_id       = var.zone_id
  payment_type  = var.hologram_payment_type
  pricing_cycle = var.hologram_pricing_cycle
  cpu           = var.hologram_cpu
  instance_name = var.hologram_instance_name

  # Configure Intranet endpoint
  endpoints {
    type = "Intranet"
  }

  # Configure VPC Single Tunnel endpoint
  endpoints {
    vpc_id     = alicloud_vpc.this.id
    vswitch_id = alicloud_vswitch.this.id
    type       = "VPCSingleTunnel"
  }

  # Configure Internet endpoint
  endpoints {
    type = "Internet"
  }
}