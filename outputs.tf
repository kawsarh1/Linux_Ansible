output "resource_group_name" {
  value = azurerm_resource_group.vm_rg.name
}

output "lin_username" {
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

output "public_key" {
  value     = tls_private_key.vm_ssh.public_key_pem
  //sensitive = true
}

#Outputs startup script in a way which a VM can understand in its creation so it can run it in first boot.
output "base64encode" {
  value       = base64encode(data.template_file.add_anisble_user_script.rendered)
  description = "base64 encoded firstboot script"
}