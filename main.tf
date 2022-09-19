resource "azurerm_storage_account" "sa" {
  name                     = var.sa_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_media_services_account" "media_services" {
  name                = var.media_services_name
  location            = var.location
  resource_group_name = var.resource_group_name

  storage_account {
    id         = azurerm_storage_account.sa.id
    is_primary = true
  }
}