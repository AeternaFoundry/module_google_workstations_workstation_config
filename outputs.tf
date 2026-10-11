output "workstations_workstation_configs_id" {
  description = "Map of id values across all workstations_workstation_configs, keyed the same as var.workstations_workstation_configs except keys with no id are omitted"
  value       = { for k, v in google_workstations_workstation_config.workstations_workstation_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workstations_workstation_configs_allowed_ports" {
  description = "Map of allowed_ports values across all workstations_workstation_configs, keyed the same as var.workstations_workstation_configs except keys with no allowed_ports are omitted"
  value       = { for k, v in google_workstations_workstation_config.workstations_workstation_configs : k => v.allowed_ports if v.allowed_ports != null && length(v.allowed_ports) > 0 }
}
output "workstations_workstation_configs_annotations" {
  description = "Map of annotations values across all workstations_workstation_configs, keyed the same as var.workstations_workstation_configs except keys with no annotations are omitted"
  value       = { for k, v in google_workstations_workstation_config.workstations_workstation_configs : k => v.annotations if v.annotations != null && length(v.annotations) > 0 }
}
output "workstations_workstation_configs_conditions" {
  description = "Map of conditions values across all workstations_workstation_configs, keyed the same as var.workstations_workstation_configs except keys with no conditions are omitted"
  value       = { for k, v in google_workstations_workstation_config.workstations_workstation_configs : k => v.conditions if v.conditions != null && length(v.conditions) > 0 }
}
output "workstations_workstation_configs_container" {
  description = "Map of container values across all workstations_workstation_configs, keyed the same as var.workstations_workstation_configs except keys with no container are omitted"
  value       = { for k, v in google_workstations_workstation_config.workstations_workstation_configs : k => one(v.container) if v.container != null && length(v.container) > 0 }
}
output "workstations_workstation_configs_create_time" {
  description = "Map of create_time values across all workstations_workstation_configs, keyed the same as var.workstations_workstation_configs except keys with no create_time are omitted"
  value       = { for k, v in google_workstations_workstation_config.workstations_workstation_configs : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "workstations_workstation_configs_degraded" {
  description = "Map of degraded values across all workstations_workstation_configs, keyed the same as var.workstations_workstation_configs except keys with no degraded are omitted"
  value       = { for k, v in google_workstations_workstation_config.workstations_workstation_configs : k => v.degraded if v.degraded != null }
}
output "workstations_workstation_configs_deletion_policy" {
  description = "Map of deletion_policy values across all workstations_workstation_configs, keyed the same as var.workstations_workstation_configs except keys with no deletion_policy are omitted"
  value       = { for k, v in google_workstations_workstation_config.workstations_workstation_configs : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "workstations_workstation_configs_disable_tcp_connections" {
  description = "Map of disable_tcp_connections values across all workstations_workstation_configs, keyed the same as var.workstations_workstation_configs except keys with no disable_tcp_connections are omitted"
  value       = { for k, v in google_workstations_workstation_config.workstations_workstation_configs : k => v.disable_tcp_connections if v.disable_tcp_connections != null }
}
output "workstations_workstation_configs_display_name" {
  description = "Map of display_name values across all workstations_workstation_configs, keyed the same as var.workstations_workstation_configs except keys with no display_name are omitted"
  value       = { for k, v in google_workstations_workstation_config.workstations_workstation_configs : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "workstations_workstation_configs_effective_annotations" {
  description = "Map of effective_annotations values across all workstations_workstation_configs, keyed the same as var.workstations_workstation_configs except keys with no effective_annotations are omitted"
  value       = { for k, v in google_workstations_workstation_config.workstations_workstation_configs : k => v.effective_annotations if v.effective_annotations != null && length(v.effective_annotations) > 0 }
}
output "workstations_workstation_configs_effective_labels" {
  description = "Map of effective_labels values across all workstations_workstation_configs, keyed the same as var.workstations_workstation_configs except keys with no effective_labels are omitted"
  value       = { for k, v in google_workstations_workstation_config.workstations_workstation_configs : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "workstations_workstation_configs_enable_audit_agent" {
  description = "Map of enable_audit_agent values across all workstations_workstation_configs, keyed the same as var.workstations_workstation_configs except keys with no enable_audit_agent are omitted"
  value       = { for k, v in google_workstations_workstation_config.workstations_workstation_configs : k => v.enable_audit_agent if v.enable_audit_agent != null }
}
output "workstations_workstation_configs_encryption_key" {
  description = "Map of encryption_key values across all workstations_workstation_configs, keyed the same as var.workstations_workstation_configs except keys with no encryption_key are omitted"
  value       = { for k, v in google_workstations_workstation_config.workstations_workstation_configs : k => one(v.encryption_key) if v.encryption_key != null && length(v.encryption_key) > 0 }
}
output "workstations_workstation_configs_ephemeral_directories" {
  description = "Map of ephemeral_directories values across all workstations_workstation_configs, keyed the same as var.workstations_workstation_configs except keys with no ephemeral_directories are omitted"
  value       = { for k, v in google_workstations_workstation_config.workstations_workstation_configs : k => v.ephemeral_directories if v.ephemeral_directories != null && length(v.ephemeral_directories) > 0 }
}
output "workstations_workstation_configs_etag" {
  description = "Map of etag values across all workstations_workstation_configs, keyed the same as var.workstations_workstation_configs except keys with no etag are omitted"
  value       = { for k, v in google_workstations_workstation_config.workstations_workstation_configs : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "workstations_workstation_configs_host" {
  description = "Map of host values across all workstations_workstation_configs, keyed the same as var.workstations_workstation_configs except keys with no host are omitted"
  value       = { for k, v in google_workstations_workstation_config.workstations_workstation_configs : k => one(v.host) if v.host != null && length(v.host) > 0 }
}
output "workstations_workstation_configs_idle_timeout" {
  description = "Map of idle_timeout values across all workstations_workstation_configs, keyed the same as var.workstations_workstation_configs except keys with no idle_timeout are omitted"
  value       = { for k, v in google_workstations_workstation_config.workstations_workstation_configs : k => v.idle_timeout if v.idle_timeout != null && length(v.idle_timeout) > 0 }
}
output "workstations_workstation_configs_labels" {
  description = "Map of labels values across all workstations_workstation_configs, keyed the same as var.workstations_workstation_configs except keys with no labels are omitted"
  value       = { for k, v in google_workstations_workstation_config.workstations_workstation_configs : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "workstations_workstation_configs_location" {
  description = "Map of location values across all workstations_workstation_configs, keyed the same as var.workstations_workstation_configs except keys with no location are omitted"
  value       = { for k, v in google_workstations_workstation_config.workstations_workstation_configs : k => v.location if v.location != null && length(v.location) > 0 }
}
output "workstations_workstation_configs_max_usable_workstations" {
  description = "Map of max_usable_workstations values across all workstations_workstation_configs, keyed the same as var.workstations_workstation_configs except keys with no max_usable_workstations are omitted"
  value       = { for k, v in google_workstations_workstation_config.workstations_workstation_configs : k => v.max_usable_workstations if v.max_usable_workstations != null }
}
output "workstations_workstation_configs_name" {
  description = "Map of name values across all workstations_workstation_configs, keyed the same as var.workstations_workstation_configs except keys with no name are omitted"
  value       = { for k, v in google_workstations_workstation_config.workstations_workstation_configs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "workstations_workstation_configs_persistent_directories" {
  description = "Map of persistent_directories values across all workstations_workstation_configs, keyed the same as var.workstations_workstation_configs except keys with no persistent_directories are omitted"
  value       = { for k, v in google_workstations_workstation_config.workstations_workstation_configs : k => v.persistent_directories if v.persistent_directories != null && length(v.persistent_directories) > 0 }
}
output "workstations_workstation_configs_project" {
  description = "Map of project values across all workstations_workstation_configs, keyed the same as var.workstations_workstation_configs except keys with no project are omitted"
  value       = { for k, v in google_workstations_workstation_config.workstations_workstation_configs : k => v.project if v.project != null && length(v.project) > 0 }
}
output "workstations_workstation_configs_readiness_checks" {
  description = "Map of readiness_checks values across all workstations_workstation_configs, keyed the same as var.workstations_workstation_configs except keys with no readiness_checks are omitted"
  value       = { for k, v in google_workstations_workstation_config.workstations_workstation_configs : k => v.readiness_checks if v.readiness_checks != null && length(v.readiness_checks) > 0 }
}
output "workstations_workstation_configs_replica_zones" {
  description = "Map of replica_zones values across all workstations_workstation_configs, keyed the same as var.workstations_workstation_configs except keys with no replica_zones are omitted"
  value       = { for k, v in google_workstations_workstation_config.workstations_workstation_configs : k => v.replica_zones if v.replica_zones != null && length(v.replica_zones) > 0 }
}
output "workstations_workstation_configs_running_timeout" {
  description = "Map of running_timeout values across all workstations_workstation_configs, keyed the same as var.workstations_workstation_configs except keys with no running_timeout are omitted"
  value       = { for k, v in google_workstations_workstation_config.workstations_workstation_configs : k => v.running_timeout if v.running_timeout != null && length(v.running_timeout) > 0 }
}
output "workstations_workstation_configs_terraform_labels" {
  description = "Map of terraform_labels values across all workstations_workstation_configs, keyed the same as var.workstations_workstation_configs except keys with no terraform_labels are omitted"
  value       = { for k, v in google_workstations_workstation_config.workstations_workstation_configs : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "workstations_workstation_configs_uid" {
  description = "Map of uid values across all workstations_workstation_configs, keyed the same as var.workstations_workstation_configs except keys with no uid are omitted"
  value       = { for k, v in google_workstations_workstation_config.workstations_workstation_configs : k => v.uid if v.uid != null && length(v.uid) > 0 }
}
output "workstations_workstation_configs_workstation_cluster_id" {
  description = "Map of workstation_cluster_id values across all workstations_workstation_configs, keyed the same as var.workstations_workstation_configs except keys with no workstation_cluster_id are omitted"
  value       = { for k, v in google_workstations_workstation_config.workstations_workstation_configs : k => v.workstation_cluster_id if v.workstation_cluster_id != null && length(v.workstation_cluster_id) > 0 }
}
output "workstations_workstation_configs_workstation_config_id" {
  description = "Map of workstation_config_id values across all workstations_workstation_configs, keyed the same as var.workstations_workstation_configs except keys with no workstation_config_id are omitted"
  value       = { for k, v in google_workstations_workstation_config.workstations_workstation_configs : k => v.workstation_config_id if v.workstation_config_id != null && length(v.workstation_config_id) > 0 }
}

