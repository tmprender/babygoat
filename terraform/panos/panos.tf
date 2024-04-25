terraform {
  required_providers {
    panos = {
      source = "PaloAltoNetworks/panos"
      version = "1.11.1"
    }
  }
}

provider "panos" {
    hostname = "127.0.0.1"
    api_key = "secret"
}

data "panos_security_rule" "example" {
    name = "my rule name"

    tags = [{"k":"v"}]
}
