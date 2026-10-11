variable "scc_v2_organization_source_iam_bindings" {
  description = <<EOT
Map of scc_v2_organization_source_iam_bindings, attributes below
Required:
    - members
    - organization
    - role
    - source
Optional:
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    members      = set(string)
    organization = string
    role         = string
    source       = string
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

