阿里云 Hologres OLAP 分析平台 Terraform 模块

# terraform-alicloud-hologres-olap

[English](https://github.com/alibabacloud-automation/terraform-alicloud-hologres-olap/blob/main/README.md) | 简体中文

使用阿里云 Hologres 服务创建高性能、轻量级 OLAP（在线分析处理）分析平台的 Terraform 模块。此模块旨在实现[高性能，搭建轻量 OLAP 分析平台](https://www.aliyun.com/solution/tech-solution/hologres-olap)解决方案，为分析工作负载提供实时数据仓库功能。该模块提供必要的网络基础设施，包括 VPC 和交换机，以及配置了多种端点类型的 Hologres 实例，以支持灵活的访问模式。

## 使用方法

创建具有 VPC 网络基础设施的 Hologres OLAP 分析平台：

```terraform
provider "alicloud" {
  region = "cn-shanghai"
}

module "hologres_olap" {
  source = "alibabacloud-automation/hologres-olap/alicloud"

  # VPC 配置
  vpc_cidr_block = "192.168.0.0/16"
  vpc_name       = "my-hologres-vpc"

  # 交换机配置
  vswitch_cidr_block = "192.168.0.0/24"
  vswitch_name       = "my-hologres-vswitch"
  zone_id            = "cn-shanghai-e"

  # Hologres 实例配置
  hologram_instance_type   = "Standard"
  hologram_payment_type    = "PayAsYouGo"
  hologram_pricing_cycle   = "Hour"
  hologram_cpu             = 32
  hologram_instance_name   = "my-hologres-instance"
}
```

## 示例

* [完整示例](https://github.com/alibabacloud-automation/terraform-alicloud-hologres-olap/tree/main/examples/complete)

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [alicloud_hologram_instance.this](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/hologram_instance) | resource |
| [alicloud_vpc.this](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/vpc) | resource |
| [alicloud_vswitch.this](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/vswitch) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_hologram_cpu"></a> [hologram\_cpu](#input\_hologram\_cpu) | The number of CPU cores for the Hologres instance. | `number` | `32` | no |
| <a name="input_hologram_instance_name"></a> [hologram\_instance\_name](#input\_hologram\_instance\_name) | The name of the Hologres instance. | `string` | `"hologres-olap-instance"` | no |
| <a name="input_hologram_instance_type"></a> [hologram\_instance\_type](#input\_hologram\_instance\_type) | The type of the Hologres instance. Valid values: Standard, Follower. | `string` | `"Standard"` | no |
| <a name="input_hologram_payment_type"></a> [hologram\_payment\_type](#input\_hologram\_payment\_type) | The payment type of the Hologres instance. Valid values: PayAsYouGo, Subscription. | `string` | `"PayAsYouGo"` | no |
| <a name="input_hologram_pricing_cycle"></a> [hologram\_pricing\_cycle](#input\_hologram\_pricing\_cycle) | The pricing cycle of the Hologres instance. Valid values: Hour, Month. | `string` | `"Hour"` | no |
| <a name="input_vpc_cidr_block"></a> [vpc\_cidr\_block](#input\_vpc\_cidr\_block) | The CIDR block for the VPC. Example: 192.168.0.0/16 | `string` | `"192.168.0.0/16"` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | The name of the VPC. | `string` | `"hologres-olap-vpc"` | no |
| <a name="input_vswitch_cidr_block"></a> [vswitch\_cidr\_block](#input\_vswitch\_cidr\_block) | The CIDR block for the VSwitch. Must be a subset of the VPC CIDR block. | `string` | `"192.168.0.0/24"` | no |
| <a name="input_vswitch_name"></a> [vswitch\_name](#input\_vswitch\_name) | The name of the VSwitch. | `string` | `"hologres-olap-vswitch"` | no |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | The availability zone ID where resources will be created. Example: cn-hangzhou-j | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_this_hologram_endpoints"></a> [this\_hologram\_endpoints](#output\_this\_hologram\_endpoints) | The endpoints configuration of the Hologres instance. |
| <a name="output_this_hologram_instance_id"></a> [this\_hologram\_instance\_id](#output\_this\_hologram\_instance\_id) | The ID of the Hologres instance. |
| <a name="output_this_hologram_instance_name"></a> [this\_hologram\_instance\_name](#output\_this\_hologram\_instance\_name) | The name of the Hologres instance. |
| <a name="output_this_hologram_instance_type"></a> [this\_hologram\_instance\_type](#output\_this\_hologram\_instance\_type) | The type of the Hologres instance. |
| <a name="output_this_hologram_status"></a> [this\_hologram\_status](#output\_this\_hologram\_status) | The status of the Hologres instance. |
| <a name="output_this_vpc_cidr_block"></a> [this\_vpc\_cidr\_block](#output\_this\_vpc\_cidr\_block) | The CIDR block of the VPC. |
| <a name="output_this_vpc_id"></a> [this\_vpc\_id](#output\_this\_vpc\_id) | The ID of the VPC. |
| <a name="output_this_vpc_name"></a> [this\_vpc\_name](#output\_this\_vpc\_name) | The name of the VPC. |
| <a name="output_this_vswitch_cidr_block"></a> [this\_vswitch\_cidr\_block](#output\_this\_vswitch\_cidr\_block) | The CIDR block of the VSwitch. |
| <a name="output_this_vswitch_id"></a> [this\_vswitch\_id](#output\_this\_vswitch\_id) | The ID of the VSwitch. |
| <a name="output_this_vswitch_zone_id"></a> [this\_vswitch\_zone\_id](#output\_this\_vswitch\_zone\_id) | The availability zone ID of the VSwitch. |
<!-- END_TF_DOCS -->

## 提交问题

如果您在使用此模块时遇到任何问题，请提交一个 [provider issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new) 并告知我们。

**注意：** 不建议在此仓库中提交问题。

## 作者

由阿里云 Terraform 团队创建和维护(terraform@alibabacloud.com)。

## 许可证

MIT 许可。有关完整详细信息，请参阅 LICENSE。

## 参考

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)