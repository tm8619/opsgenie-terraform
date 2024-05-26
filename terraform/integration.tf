/*
API Keyがtfstateに乗ってくるので一旦保留

resource "opsgenie_api_integration" "sample_api_integration" {
  name = "sample-api-integration"
  type = "Datadog"

  responders {
    type = "schedule"
    id   = "${opsgenie_schedule.sample_schedule.id}"
  }

  owner_team_id = "${opsgenie_team.sample_team.id}"
}
*/