module "dependencies" {
  source       = "../modules/dependencies"
  release_name = "test"
  namespace    = "test"
  labels = {
    "env" = "test"
  }

  config = {
    "mysql" = {

    }
    "redis" = {

    }
  }
}
