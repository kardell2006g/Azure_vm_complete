# LIst of outputs 

output "Resource_Group_Name" {
    value = azurerm_resource_group.rg.name
}

output "Public_IP_Address" {
  value = data.azurerm_public_ip.myterraformpublicip.ip_address
}