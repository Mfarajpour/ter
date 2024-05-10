module "dependencies" {
  source           = "../modules/dependencies"
  release_name     = "mynonprodtest"
  namespace        = "nonprod"
  create_namespace = true
  labels = {
    "env" = "nonprod"
  }
  config = var.config



}
