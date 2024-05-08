resource "kubernetes_namespace" "dependenies" {
  count = var.create_namespace ? 1 : 0
  metadata {
    name   = var.namespace
    labels = var.labels
  }

}




resource "kubernetes_deployment" "dependencies" {
  for_each = local.dependencies
  metadata {
    name      = "${var.release_name}-${each.key}"
    namespace = var.namespace
    labels    = var.labels
  }

  spec {
    replicas = each.value.replicas
    selector {
      match_labels = var.labels
    }

    template {
      metadata {
        labels = var.labels
      }

      spec {
        container {
          name  = each.key
          image = each.value.image
        }
      }
    }
  }
  depends_on = [
    kubernetes_namespace.dependenies
  ]
}
