variable "grafana_users" {
  default = [
    {
      "login"    = "user1",
      "password" = "user1",
      "email"    = "user1@localhost",
      "name"     = "user1"
    },
    {
      "login"    = "user2",
      "password" = "user2",
      "email"    = "user2@localhost",
      "name"     = "user2"
    },
    {
      "login"    = "user3",
      "password" = "user3",
      "email"    = "user3@localhost",
      "name"     = "user3"
    }

  ]
}
