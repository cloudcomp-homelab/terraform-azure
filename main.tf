# ============================================================
# RESOURCE GROUPS
# ============================================================
module "resource_group" {
  source   = "./modules/resource-group"
  for_each = var.resource_groups

  name     = each.key
  location = coalesce(each.value.location, var.location)
  tags     = var.tags
}