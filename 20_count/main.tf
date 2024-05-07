resource "local_file" "test" {
  count    = length(var.local_files)
  filename = "templates/test${count.index}.tpl"
  content  = var.local_files[count.index]

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

