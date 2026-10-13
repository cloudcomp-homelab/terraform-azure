# ============================================================
# PROVIDER - AZURE (OIDC, NO SECRETS)
# ============================================================
provider "azurerm" {
  features {
    resource_group {
      # Safety net: never delete a resource group that still contains resources
      prevent_deletion_if_contains_resources = true
    }
  }

  # Client ID, tenant ID and subscription ID come from ARM_* environment variables
  use_oidc = true
}