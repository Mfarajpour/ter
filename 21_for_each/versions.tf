terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
    template = {
      source  = "cloudposse/template"
      version = "~> 2.2"
    }
  }
}



