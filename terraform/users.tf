resource "opsgenie_user" "test_user" {
  username  = "user@domain.com"
  full_name = "user"
  role      = "User"
  timezone  = "Asia/Tokyo"
}

resource "opsgenie_user" "admin_user" {
  username  = "admin@domain.com"
  full_name = "admin"
  role      = "Admin"
  timezone  = "Asia/Tokyo"
}

