variable "integration_twilio_accounts" {
  description = <<EOT
Map of integration_twilio_accounts, attributes below
Required:
    - authentication
    - name
    - settings
Optional:
    - dataflows
EOT

  type = map(object({
    authentication = object({
      twilio_integration_account_basic_auth = optional(object({
        auth_type           = optional(string)
        password_wo         = string
        password_wo_version = string
        username            = string
      }))
    })
    name = string
    settings = object({
      account_sid = string
      censor_logs = optional(bool)
    })
    dataflows = optional(object({
      twilio_alerts_logs = optional(object({
        enabled = optional(bool)
      }))
      twilio_call_summaries_logs = optional(object({
        enabled = optional(bool)
      }))
      twilio_cloud_cost_metrics = optional(object({
        enabled = optional(bool)
      }))
      twilio_events_logs = optional(object({
        enabled = optional(bool)
      }))
      twilio_messages_logs = optional(object({
        enabled = optional(bool)
      }))
    }))
  }))
}

