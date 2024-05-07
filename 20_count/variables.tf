variable "local_files" {
  type = list(string)
  default = [
    "Hello from first item $${name}",
    "Hello from Second item $${name}",
    "Hello from Third item $${name}",
    "Hello from Fourth item $${name}",
    "Hello from Fifth item $${name}",
  ]
}
