resource "azurerm_postgresql_server" "example" {

  name                         = "example-psqlserver"

  location                     = "eastus"

  resource_group_name          = "main_resource_group"

  administrator_login          = "psqladminun"

  administrator_login_password = "PSQLAdm1n!@#$!"

sku_name                     = "GP_Gen5_4"

  storage_mb                   = 640000

  ssl_enforcement_enabled      = false

 version                      = "9.6"

  geo_redundant_backup_enabled = true

}
