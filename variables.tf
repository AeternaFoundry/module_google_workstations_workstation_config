variable "workstations_workstation_configs" {
  description = <<EOT
Map of workstations_workstation_configs, attributes below
Required:
    - location
    - workstation_cluster_id
    - workstation_config_id
Optional:
    - annotations
    - deletion_policy
    - disable_tcp_connections
    - display_name
    - enable_audit_agent
    - idle_timeout
    - labels
    - max_usable_workstations
    - project
    - replica_zones
    - running_timeout
    - allowed_ports (block):
        - first (optional)
        - last (optional)
    - container (block):
        - args (optional)
        - command (optional)
        - env (optional)
        - image (optional)
        - run_as_user (optional)
        - working_dir (optional)
    - encryption_key (block):
        - kms_key (required)
        - kms_key_service_account (required)
    - ephemeral_directories (block):
        - gce_pd (optional, block):
            - disk_type (optional)
            - read_only (optional)
            - source_image (optional)
            - source_snapshot (optional)
        - mount_path (optional)
    - host (block):
        - gce_instance (optional, block):
            - accelerators (optional, block):
                - count (required)
                - type (required)
            - boost_configs (optional, block):
                - accelerators (optional, block):
                    - count (required)
                    - type (required)
                - boot_disk_size_gb (optional)
                - enable_nested_virtualization (optional)
                - id (required)
                - machine_type (optional)
                - pool_size (optional)
            - boot_disk_size_gb (optional)
            - confidential_instance_config (optional, block):
                - enable_confidential_compute (optional)
            - disable_public_ip_addresses (optional)
            - disable_ssh (optional)
            - enable_nested_virtualization (optional)
            - instance_metadata (optional)
            - machine_type (optional)
            - pool_size (optional)
            - service_account (optional)
            - service_account_scopes (optional)
            - shielded_instance_config (optional, block):
                - enable_integrity_monitoring (optional)
                - enable_secure_boot (optional)
                - enable_vtpm (optional)
            - tags (optional)
            - vm_tags (optional)
    - persistent_directories (block):
        - gce_hd (optional, block):
            - archive_timeout (optional)
            - reclaim_policy (optional)
            - size_gb (optional)
            - source_snapshot (optional)
        - gce_pd (optional, block):
            - disk_type (optional)
            - fs_type (optional)
            - reclaim_policy (optional)
            - size_gb (optional)
            - source_snapshot (optional)
        - mount_path (optional)
    - readiness_checks (block):
        - path (required)
        - port (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    location                = string
    workstation_cluster_id  = string
    workstation_config_id   = string
    annotations             = optional(map(string))
    deletion_policy         = optional(string)
    disable_tcp_connections = optional(bool)
    display_name            = optional(string)
    enable_audit_agent      = optional(bool)
    idle_timeout            = optional(string)
    labels                  = optional(map(string))
    max_usable_workstations = optional(number)
    project                 = optional(string)
    replica_zones           = optional(list(string))
    running_timeout         = optional(string)
    allowed_ports = optional(list(object({
      first = optional(number)
      last  = optional(number)
    })))
    container = optional(object({
      args        = optional(list(string))
      command     = optional(list(string))
      env         = optional(map(string))
      image       = optional(string)
      run_as_user = optional(number)
      working_dir = optional(string)
    }))
    encryption_key = optional(object({
      kms_key                 = string
      kms_key_service_account = string
    }))
    ephemeral_directories = optional(list(object({
      gce_pd = optional(object({
        disk_type       = optional(string)
        read_only       = optional(bool)
        source_image    = optional(string)
        source_snapshot = optional(string)
      }))
      mount_path = optional(string)
    })))
    host = optional(object({
      gce_instance = optional(object({
        accelerators = optional(list(object({
          count = number
          type  = string
        })))
        boost_configs = optional(list(object({
          accelerators = optional(list(object({
            count = number
            type  = string
          })))
          boot_disk_size_gb            = optional(number)
          enable_nested_virtualization = optional(bool)
          id                           = string
          machine_type                 = optional(string)
          pool_size                    = optional(number)
        })))
        boot_disk_size_gb = optional(number)
        confidential_instance_config = optional(object({
          enable_confidential_compute = optional(bool)
        }))
        disable_public_ip_addresses  = optional(bool)
        disable_ssh                  = optional(bool)
        enable_nested_virtualization = optional(bool)
        instance_metadata            = optional(map(string))
        machine_type                 = optional(string)
        pool_size                    = optional(number)
        service_account              = optional(string)
        service_account_scopes       = optional(list(string))
        shielded_instance_config = optional(object({
          enable_integrity_monitoring = optional(bool)
          enable_secure_boot          = optional(bool)
          enable_vtpm                 = optional(bool)
        }))
        tags    = optional(list(string))
        vm_tags = optional(map(string))
      }))
    }))
    persistent_directories = optional(list(object({
      gce_hd = optional(object({
        archive_timeout = optional(string)
        reclaim_policy  = optional(string)
        size_gb         = optional(number)
        source_snapshot = optional(string)
      }))
      gce_pd = optional(object({
        disk_type       = optional(string)
        fs_type         = optional(string)
        reclaim_policy  = optional(string)
        size_gb         = optional(number)
        source_snapshot = optional(string)
      }))
      mount_path = optional(string)
    })))
    readiness_checks = optional(list(object({
      path = string
      port = number
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

