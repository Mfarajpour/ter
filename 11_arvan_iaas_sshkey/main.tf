resource "tls_private_key" "sshtest" {
  algorithm = "ED25519"
}

resource "arvan_iaas_sshkey" "vm" {
  name       = "vm"
  public_key = tls_private_key.sshtest.public_key_openssh
  region     = "ir-thr-c2"
  depends_on = [
    tls_private_key.sshtest
  ]
}
