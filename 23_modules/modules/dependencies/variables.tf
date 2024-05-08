variable "release_name" {
  type = string
}

variable "namespace" {
  type = string
}

variable "labels" {
  type = map(string)

}

variable "create_namespace" {
  type    = bool
  default = true
}
