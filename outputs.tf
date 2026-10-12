output "incident_workflow_triggers_id" {
  description = "Map of id values across all incident_workflow_triggers, keyed the same as var.incident_workflow_triggers except keys with no id are omitted"
  value       = { for k, v in pagerduty_incident_workflow_trigger.incident_workflow_triggers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "incident_workflow_triggers_condition" {
  description = "Map of condition values across all incident_workflow_triggers, keyed the same as var.incident_workflow_triggers except keys with no condition are omitted"
  value       = { for k, v in pagerduty_incident_workflow_trigger.incident_workflow_triggers : k => v.condition if v.condition != null && length(v.condition) > 0 }
}
output "incident_workflow_triggers_permissions" {
  description = "Map of permissions values across all incident_workflow_triggers, keyed the same as var.incident_workflow_triggers except keys with no permissions are omitted"
  value       = { for k, v in pagerduty_incident_workflow_trigger.incident_workflow_triggers : k => one(v.permissions) if v.permissions != null && length(v.permissions) > 0 }
}
output "incident_workflow_triggers_services" {
  description = "Map of services values across all incident_workflow_triggers, keyed the same as var.incident_workflow_triggers except keys with no services are omitted"
  value       = { for k, v in pagerduty_incident_workflow_trigger.incident_workflow_triggers : k => v.services if v.services != null && length(v.services) > 0 }
}
output "incident_workflow_triggers_subscribed_to_all_services" {
  description = "Map of subscribed_to_all_services values across all incident_workflow_triggers, keyed the same as var.incident_workflow_triggers except keys with no subscribed_to_all_services are omitted"
  value       = { for k, v in pagerduty_incident_workflow_trigger.incident_workflow_triggers : k => v.subscribed_to_all_services if v.subscribed_to_all_services != null }
}
output "incident_workflow_triggers_type" {
  description = "Map of type values across all incident_workflow_triggers, keyed the same as var.incident_workflow_triggers except keys with no type are omitted"
  value       = { for k, v in pagerduty_incident_workflow_trigger.incident_workflow_triggers : k => v.type if v.type != null && length(v.type) > 0 }
}
output "incident_workflow_triggers_workflow" {
  description = "Map of workflow values across all incident_workflow_triggers, keyed the same as var.incident_workflow_triggers except keys with no workflow are omitted"
  value       = { for k, v in pagerduty_incident_workflow_trigger.incident_workflow_triggers : k => v.workflow if v.workflow != null && length(v.workflow) > 0 }
}

