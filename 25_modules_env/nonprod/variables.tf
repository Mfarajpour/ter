variable "config" {

  type = map(map(string))
  default = {
    "mysql" = {
      "MYSQL_ROOT_PASSWORD" = "nonprod_root"
      "MYSQL_DATABASE"      = "nonprod_test"
      "MYSQL_USER"          = "nonprod_test"
      "MYSQL_PASSWORD"      = "nonprod_hardpass"
    }
    "redis" = {
      "m" = "w"

    }
  }
}
