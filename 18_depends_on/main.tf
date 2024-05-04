resource "kubernetes_deployment" "nginx" {
  metadata {
    name = "nginx"
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        "app" = "nginx"
      }
    }

    template {
      metadata {
        labels = {
          "app" = "nginx"
        }
      }

      spec {
        container {
          name  = "nginx"
          image = "nginx:alpine"
          port {
            container_port = 80
          }
        }
      }
    }
  }

  timeouts {
    create = "120s"
    update = "120s"
    delete = "120s"
  }

}


resource "kubernetes_service" "nginx" {
  metadata {
    name = "test"
  }
  spec {
    type = "ClusterIP"

    selector = {
      app = "nginx"
    }

    port {
      port        = 80
      target_port = 80
    }
  }
  depends_on = [
    kubernetes_deployment.nginx
  ]
}
