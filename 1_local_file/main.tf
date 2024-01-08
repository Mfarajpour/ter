resource "local_file" "myfile" {
  filename        = "test.txt"
  content         = "Hello Devops"
  file_permission = "0640"
}
