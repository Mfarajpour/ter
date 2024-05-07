resource "local_file" "test" {
  for_each = var.local_files_map
  filename = "templates/${each.key}.tpl"
  content  = each.value.content
}

