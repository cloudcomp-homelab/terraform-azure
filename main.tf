# ============================================================
# RESOURCE GROUP
# ============================================================
module "rg" {
  source = "./modules/resource-group"

  name     = var.rg_name
  location = var.location
  tags     = var.tags
}

# ============================================================
# VIRTUAL NETWORK
# ============================================================
module "vnet" {
  source = "./modules/virtual-network"

  name                = var.vnet_name
  resource_group_name = module.rg.name
  location            = var.location
  address_space       = var.vnet_address_space
  subnets             = var.subnets
  tags                = var.tags
}