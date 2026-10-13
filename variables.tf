# ============================================================
# GLOBAL
# ============================================================
variable "location" {
  type = string
}

variable "tags" {
  type = map(string)
}

# ============================================================
# RESOURCE GROUPS
# ============================================================
variable "resource_groups" {
  type = map(object({
    location = optional(string)
  }))
  default = {}
}