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

data "panos_security_rule" "rule1" {
    name = "my rule name"

    tags = ["test","dev"]

}

resource "panos_address_object" "example" {
    name = "localnet"
    value = "192.168.80.0/24"
    description = "The 192.168.80 network"
    tags = [
        "internal",
        "dmz",
    ]

    lifecycle {
        create_before_destroy = true
    }
}
