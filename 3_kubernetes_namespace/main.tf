resource "kubernetes_namespace" "myns" {
  metadata {
    name = var.myns_name
    labels = {
      "app.kubernetes.io/name" = var.myns_name
    }
  }

}
