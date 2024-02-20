resource "azurerm_storage_account" "sa" {
  name                     =  "${var.name}-storage"
  resource_group_name      = var.resource_group_name
  location                 = var.resource_group_location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}

resource "azurerm_media_services_account" "media_services" {
  name                = var.name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  storage_account {
    id         = azurerm_storage_account.sa.id
    is_primary = true
  }
  depends_on = [ azurerm_user_assigned_identity.user_assigned_identity ]
}
resource "azurerm_user_assigned_identity" "user_assigned_identity" {
  location            = var.resource_group_location
  name                =  "${var.name}-identity"
  resource_group_name = var.resource_group_name
}