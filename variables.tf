variable "resource_group_name" {
  type        = string
  description = "name of the resource group"
}

variable "resource_group_location" {
  type        = string
  description = "location of the resource group"
}


variable "name" {
  type        = string
  description = "name of the azurerm_media_services_account"
}
variable "account_tier" {
  type        = string
  description = "name of the azurerm_media_services_account"
  default = "Standard"
}
variable "account_replication_type" {
  type        = string
  description = "name of the azurerm_media_services_account"
  default = "LRS"
  
}