resource "grafana_user" "users" {
  for_each = zipmap([for i, v in var.grafana_users : v.email], var.grafana_users)
  name     = each.value.name
  login    = each.value.login
  email    = each.value.email
  password = each.value.password
}
