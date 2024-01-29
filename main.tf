resource "azurerm_windows_virtual_machine" "main" {
  name                  = var.name
  resource_group_name   = var.resource_group_name
  location              = var.location
  size                  = var.size
  admin_username        = var.admin_username
  admin_password        = var.admin_password
  network_interface_ids = var.network_interface_ids

  os_disk {
    caching              = var.caching
    storage_account_type = var.storage_account_type
  }

  dynamic "source_image_reference" {
    for_each = var.source_image_reference_enabled ? [1] : []
    content {
      publisher = var.source_image_reference.publisher
      offer     = var.source_image_reference.offer
      sku       = var.source_image_reference.sku
      version   = var.source_image_reference.version
    }
  }

  identity {
    type = var.identity.type
  }
  allow_extension_operations     = var.allow_extension_operations
  tags                           = var.tags

  lifecycle {
   ignore_changes = [
      tags
    ]
  }
}