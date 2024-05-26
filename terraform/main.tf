# Configure the Opsgenie Provider
provider "opsgenie" {
  api_key = var.opsgenie_api_key
  api_url = "api.opsgenie.com"
}