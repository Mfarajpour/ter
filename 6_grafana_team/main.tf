resource "grafana_team" "myteam" {
  name    = "myteam"
  members = [for i, v in data.grafana_users.users.users : v.email if v.login != "admin"]

}

resource "grafana_team" "admins" {
  name    = "admins"
  members = [for i, v in data.grafana_users.users.users : v.email if v.is_admin == true && v.login != "admin"]
}
