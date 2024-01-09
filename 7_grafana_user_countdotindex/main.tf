resource "grafana_user" "users" {
  count    = length(var.grafana_users)
  name     = var.grafana_users[count.index].name
  login    = var.grafana_users[count.index].login
  email    = var.grafana_users[count.index].email
  password = var.grafana_users[count.index].password
}
