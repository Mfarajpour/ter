locals {
  dependencies = {
    "redis" = {
      "image" = "redis:7"
    }
    "mysql" = {
      "image" = "mysql:8"

    }
  }
  default_configs = {
    "mysql" = {
      "MYSQL_ROOT_PASSWORD" = "root"
      "MYSQL_DATABASE"      = "test"
      "MYSQL_USER"          = "test"
      "MYSQL_PASSWORD"      = "hardpass"
    }
    "redis" = {}
  }

}
