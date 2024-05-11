output "mysql_password" {
  value     = module.dependencies.mysql_password
  sensitive = true
}
