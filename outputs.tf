output "incident_workflow_triggers_id" {
  description = "Map of id values across all incident_workflow_triggers, keyed the same as var.incident_workflow_triggers"
  value       = { for k, v in pagerduty_incident_workflow_trigger.incident_workflow_triggers : k => v.id }
}
output "incident_workflow_triggers_condition" {
  description = "Map of condition values across all incident_workflow_triggers, keyed the same as var.incident_workflow_triggers"
  value       = { for k, v in pagerduty_incident_workflow_trigger.incident_workflow_triggers : k => v.condition }
}
output "incident_workflow_triggers_permissions" {
  description = "Map of permissions values across all incident_workflow_triggers, keyed the same as var.incident_workflow_triggers"
  value       = { for k, v in pagerduty_incident_workflow_trigger.incident_workflow_triggers : k => one(v.permissions) }
}
output "incident_workflow_triggers_services" {
  description = "Map of services values across all incident_workflow_triggers, keyed the same as var.incident_workflow_triggers"
  value       = { for k, v in pagerduty_incident_workflow_trigger.incident_workflow_triggers : k => v.services }
}
output "incident_workflow_triggers_subscribed_to_all_services" {
  description = "Map of subscribed_to_all_services values across all incident_workflow_triggers, keyed the same as var.incident_workflow_triggers"
  value       = { for k, v in pagerduty_incident_workflow_trigger.incident_workflow_triggers : k => v.subscribed_to_all_services }
}
output "incident_workflow_triggers_type" {
  description = "Map of type values across all incident_workflow_triggers, keyed the same as var.incident_workflow_triggers"
  value       = { for k, v in pagerduty_incident_workflow_trigger.incident_workflow_triggers : k => v.type }
}
output "incident_workflow_triggers_workflow" {
  description = "Map of workflow values across all incident_workflow_triggers, keyed the same as var.incident_workflow_triggers"
  value       = { for k, v in pagerduty_incident_workflow_trigger.incident_workflow_triggers : k => v.workflow }
}

