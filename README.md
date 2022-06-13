# Azure_vm_complete
This Terraform Plan will create a complete Azure environment including VNet, network subnets, VM, public IP and PPK key required to SSH to the Azure VM.

*Note: Azureuser is username.*

*In order to get the PPK.key run "terraform output -raw tls_private_key >> filename.ppk" in the CLI on the outputted state.**

*In order to display the public IP Address run **'Terraform Refresh'** when apply completes. *

Variables required below to execute Plan.



|Key                          | Value           | Category   |
| :---                        |    :----:       |       ---: |
| ARM_CLIENT_ID               | {id}            | env        |
| ARM_CLIENT_SECRET SENSITIVE | {secret}        | env        |
| ARM_SUBSCRIPTION_ID         | {id}}           | env        |
| ARM_TENANT_ID               | {id}            | env        |
| environment                 | {type of env}   | terraform  |
| location                    | {azure region}  | terraform  |
| owner                       | {owner Name}    | terraform  |
| rg                          | {resource group}| terraform  |



-------------------------------------------------------------
#
# Create a backend

Include a backend file to use Terraform Cloud. (backend.tf)

```
terraform {
  cloud {
    organization = ""

    workspaces {
      name = ""
    }
  }
}

```
