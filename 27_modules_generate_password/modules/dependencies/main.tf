resource "random_password" "mysql_password" {
  count   = var.generate_random_password ? 2 : 0
  length  = 16
  special = true

}



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
    replicas = 1 #each.value.replicas #1

    selector {
      match_labels = var.labels
    }

    template {
      metadata {
        labels = var.labels
      }

      spec {
        container {
          image = each.value.image
          name  = each.key

          dynamic "env" {
            for_each = merge(
              local.default_configs[each.key],
              var.config[each.key],
              each.key == "mysql" && var.generate_random_password ? {
                "MYSQL_ROOT_PASSWORD" : random_password.mysql_password[0].result,
                "MYSQL_PASSWORD" : random_password.mysql_password[1].result,
              } : {}

            )
            content {
              name  = env.key
              value = env.value
            }
          }
        }
      }
    }
  }
  depends_on = [
    kubernetes_namespace.dependenies
  ]
}
