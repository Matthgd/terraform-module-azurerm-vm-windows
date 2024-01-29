output "id" {
  value       = azurerm_windows_virtual_machine.main.id
  description = "The ID of the Windows Virtual Machine."
  sensitive   = false
}

output "name" {
  value       = azurerm_windows_virtual_machine.main.name
  description = "The Name of the Windows Virtual Machine."
  sensitive   = false
}

output "identity" {
  value       = azurerm_windows_virtual_machine.main.identity
  description = "An identity block exports the following: principal_id - The ID of the System Managed Service Principal. tenant_id - The ID of the Tenant the System Managed Service Principal is assigned in."
  sensitive   = true
}

output "private_ip_addresses" {
  value       = azurerm_windows_virtual_machine.main.private_ip_addresses
  description = "The Primary Private IP Address assigned to this Virtual Machine."
  sensitive   = false
}

output "public_ip_addresses" {
  value       = azurerm_windows_virtual_machine.main.public_ip_addresses
  description = "A list of the Public IP Addresses assigned to this Virtual Machine."
  sensitive   = false
}