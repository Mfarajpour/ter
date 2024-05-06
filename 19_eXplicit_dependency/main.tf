resource "local_file" "test" {
  filename = "templates/test.tpl"
  content  = "Hello $${name}"

}
resource "template_dir" "test" {
  source_dir      = "templates"
  destination_dir = "render"

  vars = {
    name = "Devops"
  }
  depends_on = [
    local_file.test
  ]
}

