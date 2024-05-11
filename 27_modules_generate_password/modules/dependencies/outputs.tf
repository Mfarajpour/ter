output "mysql_password" {
  value = {
    "MYSQL_ROOT_PASSWORD" = random_password.mysql_password[0].result,
    "MYSQL_PASSWORD"      = random_password.mysql_password[1].result
  }
}
