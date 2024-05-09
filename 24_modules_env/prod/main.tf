module "dependencies" {
  source       = "../modules/dependencies"
  release_name = "myprod"
  namespace    = "prod"
  labels = {
    "env" = "prod"
  }
  config = {
    "mysql" = {
      "MYSQL_ROOT_PASSWORD" = "prod_root"
      "MYSQL_DATABASE"      = "prod_test"
      "MYSQL_USER"          = "prod_test"
      "MYSQL_PASSWORD"      = "prod_hardpass"
    }
    "redis" = {
      "a" = "A"
      "b" = "B"
    }
  }
}
