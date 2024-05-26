/*
│ Error: Error occurred with Status code: 422, Message: Escalation rules are not valid for current plan, please consider upgrading to a plan with Enhanced Escalations.
無料プランでは使用できない

resource "opsgenie_escalation" "default" {
  name          = "sample_escalation"
  description   = "sample escalation"
  owner_team_id = opsgenie_team.sample_team.id


  rules {
    condition   = "if-not-acked"
    notify_type = "default"
    delay       = 1

    recipient {
      type = "schedule"
      id   = opsgenie_schedule.sample_schedule.id
    }
  }

  rules {
    condition   = "if-not-acked"
    notify_type = "next"
    delay       = 5

    recipient {
      type = "schedule"
      id   = opsgenie_schedule.sample_schedule.id
    }
  }

  rules {
    condition   = "if-not-acked"
    notify_type = "all"
    delay       = 10

    recipient {
      type = "team"
      id   = opsgenie_team.sample_team.id
    }
  }
}
*/

resource "opsgenie_escalation" "default" {
  name          = "sample_escalation"
  description   = "sample escalation"
  owner_team_id = opsgenie_team.sample_team.id


  rules {
    condition   = "if-not-acked"
    notify_type = "default"
    delay       = 1

    recipient {
      type = "schedule"
      id   = opsgenie_schedule.sample_schedule.id
    }
  }

  rules {
    condition   = "if-not-acked"
    notify_type = "all"
    delay       = 10

    recipient {
      type = "team"
      id   = opsgenie_team.sample_team.id
    }
  }
}
