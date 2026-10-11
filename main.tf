resource "google_workstations_workstation_config" "workstations_workstation_configs" {
  for_each = var.workstations_workstation_configs

  location                = each.value.location
  workstation_cluster_id  = each.value.workstation_cluster_id
  workstation_config_id   = each.value.workstation_config_id
  annotations             = each.value.annotations
  deletion_policy         = each.value.deletion_policy
  disable_tcp_connections = each.value.disable_tcp_connections
  display_name            = each.value.display_name
  enable_audit_agent      = each.value.enable_audit_agent
  idle_timeout            = each.value.idle_timeout
  labels                  = each.value.labels
  max_usable_workstations = each.value.max_usable_workstations
  project                 = each.value.project
  replica_zones           = each.value.replica_zones
  running_timeout         = each.value.running_timeout

  dynamic "allowed_ports" {
    for_each = each.value.allowed_ports != null ? each.value.allowed_ports : []
    content {
      first = allowed_ports.value.first
      last  = allowed_ports.value.last
    }
  }

  dynamic "container" {
    for_each = each.value.container != null ? [each.value.container] : []
    content {
      args        = container.value.args
      command     = container.value.command
      env         = container.value.env
      image       = container.value.image
      run_as_user = container.value.run_as_user
      working_dir = container.value.working_dir
    }
  }

  dynamic "encryption_key" {
    for_each = each.value.encryption_key != null ? [each.value.encryption_key] : []
    content {
      kms_key                 = encryption_key.value.kms_key
      kms_key_service_account = encryption_key.value.kms_key_service_account
    }
  }

  dynamic "ephemeral_directories" {
    for_each = each.value.ephemeral_directories != null ? each.value.ephemeral_directories : []
    content {
      dynamic "gce_pd" {
        for_each = ephemeral_directories.value.gce_pd != null ? [ephemeral_directories.value.gce_pd] : []
        content {
          disk_type       = gce_pd.value.disk_type
          read_only       = gce_pd.value.read_only
          source_image    = gce_pd.value.source_image
          source_snapshot = gce_pd.value.source_snapshot
        }
      }
      mount_path = ephemeral_directories.value.mount_path
    }
  }

  dynamic "host" {
    for_each = each.value.host != null ? [each.value.host] : []
    content {
      dynamic "gce_instance" {
        for_each = host.value.gce_instance != null ? [host.value.gce_instance] : []
        content {
          dynamic "accelerators" {
            for_each = gce_instance.value.accelerators != null ? gce_instance.value.accelerators : []
            content {
              count = accelerators.value.count
              type  = accelerators.value.type
            }
          }
          dynamic "boost_configs" {
            for_each = gce_instance.value.boost_configs != null ? gce_instance.value.boost_configs : []
            content {
              dynamic "accelerators" {
                for_each = boost_configs.value.accelerators != null ? boost_configs.value.accelerators : []
                content {
                  count = accelerators.value.count
                  type  = accelerators.value.type
                }
              }
              boot_disk_size_gb            = boost_configs.value.boot_disk_size_gb
              enable_nested_virtualization = boost_configs.value.enable_nested_virtualization
              id                           = boost_configs.value.id
              machine_type                 = boost_configs.value.machine_type
              pool_size                    = boost_configs.value.pool_size
            }
          }
          boot_disk_size_gb = gce_instance.value.boot_disk_size_gb
          dynamic "confidential_instance_config" {
            for_each = gce_instance.value.confidential_instance_config != null ? [gce_instance.value.confidential_instance_config] : []
            content {
              enable_confidential_compute = confidential_instance_config.value.enable_confidential_compute
            }
          }
          disable_public_ip_addresses  = gce_instance.value.disable_public_ip_addresses
          disable_ssh                  = gce_instance.value.disable_ssh
          enable_nested_virtualization = gce_instance.value.enable_nested_virtualization
          instance_metadata            = gce_instance.value.instance_metadata
          machine_type                 = gce_instance.value.machine_type
          pool_size                    = gce_instance.value.pool_size
          service_account              = gce_instance.value.service_account
          service_account_scopes       = gce_instance.value.service_account_scopes
          dynamic "shielded_instance_config" {
            for_each = gce_instance.value.shielded_instance_config != null ? [gce_instance.value.shielded_instance_config] : []
            content {
              enable_integrity_monitoring = shielded_instance_config.value.enable_integrity_monitoring
              enable_secure_boot          = shielded_instance_config.value.enable_secure_boot
              enable_vtpm                 = shielded_instance_config.value.enable_vtpm
            }
          }
          tags    = gce_instance.value.tags
          vm_tags = gce_instance.value.vm_tags
        }
      }
    }
  }

  dynamic "persistent_directories" {
    for_each = each.value.persistent_directories != null ? each.value.persistent_directories : []
    content {
      dynamic "gce_hd" {
        for_each = persistent_directories.value.gce_hd != null ? [persistent_directories.value.gce_hd] : []
        content {
          archive_timeout = gce_hd.value.archive_timeout
          reclaim_policy  = gce_hd.value.reclaim_policy
          size_gb         = gce_hd.value.size_gb
          source_snapshot = gce_hd.value.source_snapshot
        }
      }
      dynamic "gce_pd" {
        for_each = persistent_directories.value.gce_pd != null ? [persistent_directories.value.gce_pd] : []
        content {
          disk_type       = gce_pd.value.disk_type
          fs_type         = gce_pd.value.fs_type
          reclaim_policy  = gce_pd.value.reclaim_policy
          size_gb         = gce_pd.value.size_gb
          source_snapshot = gce_pd.value.source_snapshot
        }
      }
      mount_path = persistent_directories.value.mount_path
    }
  }

  dynamic "readiness_checks" {
    for_each = each.value.readiness_checks != null ? each.value.readiness_checks : []
    content {
      path = readiness_checks.value.path
      port = readiness_checks.value.port
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

