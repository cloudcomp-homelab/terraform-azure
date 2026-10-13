# ============================================================
# OUTPUTS
# ============================================================
output "resource_groups" {
  value = { for k, rg in module.resource_group : k => rg.id }
}