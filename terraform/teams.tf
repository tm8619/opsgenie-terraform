resource "opsgenie_team" "sample_team" {
  name        = "sample-team"
  description = "sample team managed by terraform"

  member {
    id   = "${opsgenie_user.test_user.id}"
    role = "user"
  }
  member {
    id   = "${opsgenie_user.test_admin_user.id}"
    role = "admin"
  }
}

resource "opsgenie_team" "ui_only_team" {
  name           = "UI Only Team"
  description    = "Membership in this team is managed via OpsGenie web UI only"
  ignore_members = true
  delete_default_resources = true
}