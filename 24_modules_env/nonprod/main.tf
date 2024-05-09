module "dependencies" {
  source           = "../modules/dependencies"
  release_name     = "mynonprodtest"
  namespace        = "nonprod"
  create_namespace = true
  labels = {
    "env" = "nonprod"
  }
  config = {
    "mysql" = {
      "MYSQL_ROOT_PASSWORD" = "nonprod_root"
      "MYSQL_DATABASE"      = "nonprod_test"
      "MYSQL_USER"          = "nonprod_test"
      "MYSQL_PASSWORD"      = "nonprod_hardpass"
    }
    "redis" = {
      "x" = "X"
      "y" = "Y"
    }
  }
}
