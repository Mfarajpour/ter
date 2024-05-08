locals {
  dependencies = {
    "redis" = {
      "image"    = "redis:7"
      "replicas" = 1
    }
  }
}
