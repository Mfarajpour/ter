resource "local_file" "config" {
  count    = var.create_config_file ? 1 : 0
  filename = "config.json"
  content  = <<EOF
  {
    "name" = "test"
    "env": "production"
  }
EOF
}

