resource "tls_private_key" "test" {
  algorithm = "ED25519"
}

resource "local_file" "myfile" {
  filename        = "ed25519.pub"
  content         = tls_private_key.test.public_key_openssh
  file_permission = "0640"
}

