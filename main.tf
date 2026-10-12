resource "pagerduty_incident_workflow_trigger" "incident_workflow_triggers" {
  for_each = var.incident_workflow_triggers

  subscribed_to_all_services = each.value.subscribed_to_all_services
  type                       = each.value.type
  workflow                   = each.value.workflow
  condition                  = each.value.condition
  services                   = each.value.services

  dynamic "permissions" {
    for_each = each.value.permissions != null ? [each.value.permissions] : []
    content {
      restricted = permissions.value.restricted
      team_id    = permissions.value.team_id
    }
  }
}

