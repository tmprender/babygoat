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


resource "panos_security_rule_group" "rule_group" {
    rule {
        name = "Deny everything else"
        audit_comment = "Initial config"
        source_zones = ["any"]
        source_addresses = ["any"]
        source_users = ["any"]
        destination_zones = ["any"]
        destination_addresses = ["any"]
        applications = ["any"]
        services = ["application-default"]
        categories = ["any"]
        action = "deny"
        tags = ["test", "dev"]
    }

    lifecycle {
      create_before_destroy = true
    }

}

resource "panos_address_object" "addr_obj" {
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
