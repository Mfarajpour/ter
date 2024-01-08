resource "docker_container" "test" {
  name  = "nginx"
  image = "nginx:alpine"
}
