terraform {
  required_providers {
    exoscale = {
      source  = "exoscale/exoscale"
      version = "~> 0.62.0"
    }
  }
}

provider "exoscale" {}
