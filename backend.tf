terraform {
  backend "azurerm" {
    storage_account_name = "infrastatefile1"
    container_name       = "tfstate2"
    key                  = "terraform.tfstate"
    resource_group_name = "3-tier-1"
  }
}
