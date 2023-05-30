resource "azurerm_linux_virtual_machine" "example" {
  name                = "master-vm1"
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = var.size
  admin_username      = "ubuntu"

  network_interface_ids = [
    azurerm_network_interface.master-nw-interface.id,
  ]

  admin_ssh_key {
    username   = "ubuntu"
    public_key = var.public_key
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}
