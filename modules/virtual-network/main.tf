# ============================================================
# MODULE - VIRTUAL NETWORK (WITH SUBNETS)
# ============================================================
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}

# ---------- Input ----------
variable "name" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "subnets" {
  type = map(object({
    address_prefixes = list(string)
  }))
  default = {}
}

variable "tags" {
  type    = map(string)
  default = {}
}

# ---------- Resource ----------
resource "azurerm_virtual_network" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = var.address_space
  tags                = var.tags
}

resource "azurerm_subnet" "this" {
  for_each = var.subnets

  name                 = each.key
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = each.value.address_prefixes
}

# ---------- Output ----------
output "id" {
  value = azurerm_virtual_network.this.id
}

output "name" {
  value = azurerm_virtual_network.this.name
}

output "subnet_ids" {
  value = { for k, s in azurerm_subnet.this : k => s.id }
}