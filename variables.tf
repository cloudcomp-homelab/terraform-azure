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
# RESOURCE GROUP
# ============================================================
variable "rg_name" {
  type = string
}

# ============================================================
# VIRTUAL NETWORK
# ============================================================
variable "vnet_name" {
  type = string
}

variable "vnet_address_space" {
  type = list(string)
}

variable "subnets" {
  type = map(object({
    address_prefixes = list(string)
  }))
}