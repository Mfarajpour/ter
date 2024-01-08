resource "grafana_user" "user" {
  email    = "test2@localhost"
  name     = "test2"
  login    = "test2"
  password = "admin"
  is_admin = false
}
