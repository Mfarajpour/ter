resource "kubernetes_pod" "nginx" {
  metadata {
    name = "nginx"
  }

  spec {
    container {
      name  = "nginx"
      image = "nginx:alpine"
    }
  }

  lifecycle {
    replace_triggered_by = [
      null_resource.test
    ]
  }
}

resource "null_resource" "test" {
  triggers = {
    "revision" = "2"
  }
}
