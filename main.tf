provider "azurerm" {
  features {}
}
# Criar Network Interface
resource "azurerm_network_interface" "server_nic" {
  name                = var.server_nic
  location            = var.location
  resource_group_name = var.server_rg

  # Associar endereço IP Privado e Publico a NIC
  ip_configuration {
    name                          = var.ip_name
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = var.private_ip_allocation
    private_ip_address            = var.ipv4_private
    public_ip_address_id          = azurerm_public_ip.server_ip_publico.id
  }

}

# Criar IP Publico
resource "azurerm_public_ip" "server_ip_publico" {
  name                = var.ip_publico_name
  resource_group_name = var.server_rg
  location            = var.location
  allocation_method   = var.publico_ip_allocation
}

# Criar a Máquina Virtual
resource "azurerm_windows_virtual_machine" "server_vm" {
  name                = var.server_name
  resource_group_name = var.server_rg
  location            = var.location
  size                = var.server_size
  admin_username      = var.server_admin
  admin_password      = var.server_password
  network_interface_ids = [
    azurerm_network_interface.server_nic.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = var.sto_replication
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = var.server_sku
    version   = "latest"
  }
}