Alibaba Cloud Hologres OLAP Analytics Platform Terraform Module

================================================ 

# terraform-alicloud-hologres-olap

English | [简体中文](https://github.com/alibabacloud-automation/terraform-alicloud-hologres-olap/blob/main/README-CN.md)

Terraform module which creates a high-performance, lightweight OLAP (Online Analytical Processing) analytics platform using Alibaba Cloud Hologres service. This module is designed to implement the [Build a high-performance, lightweight OLAP platform](https://www.aliyun.com/solution/tech-solution/hologres-olap) solution, providing real-time data warehousing capabilities for analytical workloads. The module provisions the necessary network infrastructure including VPC and VSwitch, along with a Hologres instance configured with multiple endpoint types for flexible access patterns.

## Usage

To create a Hologres OLAP analytics platform with VPC network infrastructure:

```terraform
module "hologres_olap" {
  source = "alibabacloud-automation/hologres-olap/alicloud"

  # VPC configuration
  vpc_cidr_block = "192.168.0.0/16"
  vpc_name       = "my-hologres-vpc"

  # VSwitch configuration
  vswitch_cidr_block = "192.168.0.0/24"
  vswitch_name       = "my-hologres-vswitch"
  zone_id            = "cn-hangzhou-j"

  # Hologres instance configuration
  hologram_instance_type   = "Standard"
  hologram_payment_type    = "PayAsYouGo"
  hologram_pricing_cycle   = "Hour"
  hologram_cpu             = 32
  hologram_instance_name   = "my-hologres-instance"
}
```

## Examples

* [Complete Example](https://github.com/alibabacloud-automation/terraform-alicloud-hologres-olap/tree/main/examples/complete)

<!-- BEGIN_TF_DOCS -->
<!-- END_TF_DOCS -->

## Submit Issues

If you have any problems when using this module, please opening
a [provider issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new) and let us know.

**Note:** There does not recommend opening an issue on this repo.

## Authors

Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com).

## License

MIT Licensed. See LICENSE for full details.

## Reference

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)