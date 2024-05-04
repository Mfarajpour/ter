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
    name = kubernetes_deployment.nginx.metadata[0].name
  }
  spec {
    type = "ClusterIP"

    selector = {
      app = "nginx"
    }

    port {
      port        = 80
      target_port = kubernetes_deployment.nginx.spec[0].template[0].spec[0].container[0].port[0].container_port
    }


  }
}
