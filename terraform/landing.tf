module "enterprise_scale" {
    source = "Azure/caf-enterprise-scale/azurerm"
    version = "2.3.1"

    providers = {
      azurerm = azurerm
      azurerm.connectivity = azurerm
      azurerm.management = azurerm
     
     }

     root_parent_id = data.azurerm_client_config.current.tenant_id
     root_id = var.root_id
     root_name = var.root_name
}