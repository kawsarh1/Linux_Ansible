output "resource_group_name" {
  value = azurerm_resource_group.vm_rg.name
}

output "win_username" {
  value = azurerm_linux_virtual_machine.az_lin_vm.admin_username
}

output "public_ip_address" {
  value = azurerm_linux_virtual_machine.az_lin_vm.public_ip_address
}

output "private_key_sanity_check" {
  value = tls_private_key.vm_ssh.id
}

output "tls_private_key" {
  value     = tls_private_key.vm_ssh.private_key_pem
  sensitive = true
}