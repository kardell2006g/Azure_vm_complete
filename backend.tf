Include a backend file to use Terraform Cloud. (backend.tf)

terraform {
  cloud {
    organization = "gekk0"
  }
    workspaces {
      name = "azure_vm_complete_app"
    
  }
}
