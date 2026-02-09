# Complete Example

This example demonstrates the complete usage of the Hologres OLAP module.

## Usage

To run this example:

1. Configure your Alibaba Cloud credentials
2. Update the variables in `main.tf` if needed
3. Run the following commands:

```bash
terraform init
terraform plan
terraform apply
```

## What This Example Creates

This example creates:

- A VPC with CIDR block `192.168.0.0/16`
- A VSwitch in the VPC with CIDR block `192.168.0.0/24`
- A Hologres instance with Standard type and 32 CPU cores
- Multiple endpoints for the Hologres instance (Intranet, VPCSingleTunnel, Internet)

## Configuration

The example uses the following configuration:

- **VPC**: Creates a new VPC for the Hologres infrastructure
- **VSwitch**: Creates a VSwitch in the specified availability zone
- **Hologres Instance**: Creates a Standard type instance with PayAsYouGo billing

## Outputs

After successful deployment, the following outputs will be available:

- `vpc_id`: The ID of the created VPC
- `vswitch_id`: The ID of the created VSwitch
- `hologram_instance_id`: The ID of the Hologres instance
- `hologram_instance_name`: The name of the Hologres instance
- `hologram_endpoints`: The endpoints configuration of the Hologres instance

## Cleanup

To destroy the resources created by this example:

```bash
terraform destroy
```