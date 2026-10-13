# ============================================================
# GLOBAL
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
resource_groups = {
  "rg-demo-03" = {}
}