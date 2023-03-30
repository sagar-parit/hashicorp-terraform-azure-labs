# 6. Terraform Resource Overview
  - Terraform <i><b>Resource</i></b> blocks describes one or more infrastructure objects, such as load balancer, Public IP, NIC, Virtual Machine
  - Terraform Resource block describes the Cloud resource properties like name etc.
  - When you execute the Terraform configuration, the Resource behavior could be create, update or delete depending upon the existing state of resource.
  - In order to provide additional functionality to Terraform Resources (create dependent resource, create multiple resources etc), you can make use of <i><b>Teraform Meta-Arguments</i></b>.
  - You can make use of Terraform <i><b>Provisioners</i></b> and <i><b>Connection Block </i></b>to configure post-creation actions for a resource.

  ## 6.1 Terraform Resource Block: Syntax
  ```terraform   
     resource "resource_type" "resource_label" {
        argument1     = "value-1"
        argument2     = "value-2"
        argument3     = "value-3"
        argumentN     = "value-N"
     }
   ```
  ## 6.2 Terraform Resource Block: Example
  ```terraform   
     resource "aws_instance" "aws" {
        ami           = "ami-a1b2c3d4"
        instance_type = "t2.micro"
     }
   ```
   
   ## 6.3 Reference Links
   - [Terraform Azure Resource Documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest)
   - [Terraform AWS Resource Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest)
   - [Terraform GCP Resource Documentation](https://registry.terraform.io/providers/hashicorp/google/latest)
      
