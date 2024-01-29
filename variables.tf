variable "name" {
  type        = string
  description = "(Required) The name of the Windows Virtual Machine. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the Resource Group in which the Windows Virtual Machine should be exist. Changing this forces a new resource to be created."
}

variable "location" {
  type        = string
  description = "(Required) The Azure location where the Windows Virtual Machine should exist. Changing this forces a new resource to be created."
}

variable "size" {
  type        = string
  description = "(Required) The SKU which should be used for this Virtual Machine, such as Standard_F2."
  default     = "Standard_B2s"
}

variable "admin_username" {
  type        = string
  description = " (Required) The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created."
}

variable "admin_password" {
  type        = string
  description = "(Required) The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created."
}

variable "caching" {
  type        = string
  description = "(Required) The Type of Caching which should be used for the Internal OS Disk. Possible values are None, ReadOnly and ReadWrite."
  default     = "ReadWrite"
}

variable "storage_account_type" {
  type        = string
  description = "(Required) The Type of Storage Account which should back this the Internal OS Disk. Possible values are Standard_LRS, StandardSSD_LRS and Premium_LRS. Changing this forces a new resource to be created."
  default     = "Standard_LRS"
}

variable "network_interface_ids" {
  type        = list(string)
  description = "(Required). A list of Network Interface ID's which should be attached to this Virtual Machine. The first Network Interface ID in this list will be the Primary Network Interface on the Virtual Machine."
}

variable "source_image_reference_enabled" {
  type        = bool
  default     = false
  description = "(Required) variavel auxiliar para for each funcionar "
}

variable "source_image_reference" {
  type = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })
  description = "(Required). A "
}

variable "identity" {
  type = object({
    type = string
  })
  description = " (Required) Specifies the type of Managed Service Identity that should be configured on this Windows Virtual Machine. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned (to enable both)."
  default = {
    type = "SystemAssigned"
  }
}
variable "allow_extension_operations" {
  type = bool
  description = "(Optional) Should Extension Operations be allowed on this Virtual Machine?"
  default = true
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "An Azure resource tags."
}

