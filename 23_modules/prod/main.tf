module "dependencies" {
  source       = "../modules/dependencies"
  release_name = "myprod"
  namespace    = "prod"
  labels = {
    "env" = "prod"
  }
}
