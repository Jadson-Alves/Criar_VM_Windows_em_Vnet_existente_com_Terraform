variable "server_rg" {
  description = "Nome do Grupo de Recursos"
  default     = "RG-Servidores"
}

variable "location" {
  description = "Localização que os recursos serão criados"
  default     = "EastUS"
}

variable "server_nic" {
  description = "Nome da network interface"
  default     = "VM-002-nic"
}

variable "private_ip_allocation" {
  description = "Tipo de alocação do endereço IP Privado"
  default     = "Static"
}

variable "ipv4_private" {
  description = "Endereço IP fixo da subnet"
  default     = "10.0.2.7"
}

variable "ip_name" {
  description = "Nome do Endereço IP Privado"
  default     = "VM-002-ip"
}

variable "subnet_id" {
  description = "ID da Subnet"
  default     = "/subscriptions/bd01f194-b0a3-4fae-abe7-47f26ed1de01/resourceGroups/RG-Servidores/providers/Microsoft.Network/virtualNetworks/vnet-servidores/subnets/subnet-servidores"
}

variable "ip_publico_name" {
  description = "Criar IP Publico"
  default     = "IP-Publico-VM-002"
}

variable "publico_ip_allocation" {
  description = "Tipo de alocação do endereço IP Publico"
  default     = "Static"
}

variable "server_name" {
  description = "Nome da Máquina virtual"
  default     = "VM-002"
}

variable "server_size" {
  description = "Tamanho da máquina virtual"
  default     = "Standard_F2"
}

variable "server_admin" {
  description = "Usuário Administrador da VM"
  default     = "adm.jadson"
}

variable "server_password" {
  description = "Senha do usuário Administrador da VM"
  default     = "P@$$w0rd1234!"
}

variable "sto_replication" {
  description = "Replicação do Storage Account"
  default     = "Standard_LRS"
}

variable "server_sku" {
  description = "Versão do Sistema operacional"
  default     = "2016-Datacenter"
}


