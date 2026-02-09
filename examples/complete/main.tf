provider "alicloud" {
  region = "cn-shanghai"
}

module "hologres_olap" {
  source = "../../"

  # VPC configuration
  vpc_cidr_block = "192.168.0.0/16"
  vpc_name       = "example-hologres-vpc"

  # VSwitch configuration
  vswitch_cidr_block = "192.168.0.0/24"
  vswitch_name       = "example-hologres-vswitch"
  zone_id            = "cn-shanghai-e"

  # Hologres instance configuration
  hologram_instance_type = "Standard"
  hologram_payment_type  = "PayAsYouGo"
  hologram_pricing_cycle = "Hour"
  hologram_cpu           = 32
  hologram_instance_name = "example-hologres-instance"
}