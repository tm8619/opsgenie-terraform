resource "opsgenie_schedule" "sample_schedule" {
  name          = "sample-schedule"
  description   = "sample schedule"
  timezone      = "Asia/Tokyo"
  owner_team_id = "${opsgenie_team.sample_team.id}"
}