output "detail_instance_id" {
  value = arvan_iaas_abrak.test1.id
}
output "detail_instance_ip" {
  value = arvan_iaas_abrak.test1.addresses[0]
}
