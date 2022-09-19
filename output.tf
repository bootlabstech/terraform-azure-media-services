output "azurerm_storage_account" {
  value     = azurerm_storage_account.sa
  sensitive = true
}

output "azurerm_media_services_account" {
  value = azurerm_media_services_account.media_services
}