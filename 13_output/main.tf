resource "arvan_iaas_abrak" "test1" {
  region = "ir-thr-c1"
  flavor = "g2-1-1-0"
  name   = "test1"
  image {
    type = "distributions"
    name = "ubuntu/20.04"
  }

  disk_size = 25
}
