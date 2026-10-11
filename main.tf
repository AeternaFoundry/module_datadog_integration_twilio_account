resource "datadog_integration_twilio_account" "integration_twilio_accounts" {
  for_each = var.integration_twilio_accounts

  authentication = each.value.authentication
  name           = each.value.name
  settings       = each.value.settings
  dataflows      = each.value.dataflows
}

