# ============================================================
# GLOBAL and STATIC
# ============================================================
location = "westeurope"

tags = {
  CostCenter  = "Homelab"
  Owner       = "Mukremin"
  environment = "sandbox"
  managedBy   = "terraform"
}

# ============================================================
# RESOURCE GROUPS
# ============================================================
rg_name = "rg-vnet-demo-01"

# ============================================================
# VIRTUAL NETWORK
# ============================================================
vnet_name          = "vnet-demo-01"
vnet_address_space = ["10.0.0.0/16"]

subnets = {
  "snet-demo-01" = {
    address_prefixes = ["10.0.0.0/24"]
  }
}