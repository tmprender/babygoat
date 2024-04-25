provider "paloaltonetworks/panos" {
    hostname = "127.0.0.1"
    api_key = "secret"
}

resource "panos_telemetry" "pan_tel" {
    threat_prevention_reports = false
    threat_prevention_data = false
    threat_prevention_packet_captures = false

    tags = {"k":"v"}

    lifecycle {
        create_before_destroy = true
    }
}
