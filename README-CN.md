阿里云 Hologres OLAP 分析平台 Terraform 模块

================================================ 

# terraform-alicloud-hologres-olap

[English](https://github.com/alibabacloud-automation/terraform-alicloud-hologres-olap/blob/main/README.md) | 简体中文

使用阿里云 Hologres 服务创建高性能、轻量级 OLAP（在线分析处理）分析平台的 Terraform 模块。此模块旨在实现[高性能，搭建轻量 OLAP 分析平台](https://www.aliyun.com/solution/tech-solution/hologres-olap)解决方案，为分析工作负载提供实时数据仓库功能。该模块提供必要的网络基础设施，包括 VPC 和交换机，以及配置了多种端点类型的 Hologres 实例，以支持灵活的访问模式。

## 使用方法

创建具有 VPC 网络基础设施的 Hologres OLAP 分析平台：

```terraform
module "hologres_olap" {
  source = "alibabacloud-automation/hologres-olap/alicloud"

  # VPC 配置
  vpc_cidr_block = "192.168.0.0/16"
  vpc_name       = "my-hologres-vpc"

  # 交换机配置
  vswitch_cidr_block = "192.168.0.0/24"
  vswitch_name       = "my-hologres-vswitch"
  zone_id            = "cn-hangzhou-j"

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