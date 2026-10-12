variable "incident_workflow_triggers" {
  description = <<EOT
Map of incident_workflow_triggers, attributes below
Required:
    - subscribed_to_all_services
    - type
    - workflow
Optional:
    - condition
    - services
    - permissions (block):
        - restricted (optional)
        - team_id (optional)
EOT

  type = map(object({
    subscribed_to_all_services = bool
    type                       = string
    workflow                   = string
    condition                  = optional(string)
    services                   = optional(list(string))
    permissions = optional(object({
      restricted = optional(bool)
      team_id    = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

