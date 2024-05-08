module "dependencies" {
  source       = "../modules/dependencies"
  release_name = "mynonprodtest"
  namespace    = "nonprod"
  labels = {
    "env" = "nonprod"
  }
}
