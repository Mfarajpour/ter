resource "grafana_user" "users" {
  for_each = var.grafana_users
  name     = var.grafana_users[each.key].name
  login    = var.grafana_users[each.key].login
  email    = var.grafana_users[each.key].email
  password = var.grafana_users[each.key].password
}
