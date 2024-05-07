
variable "local_files_map" {
  type = map(any)
  default = {
    "test1" = {
      "content" = "Hello from first item $${name}"
    }
    "test2" = {
      "content" = "Hello from Second item $${name}"
    }
    "test3" = {
      "content" = "Hello from Third item $${name}"
    }


  }
}
