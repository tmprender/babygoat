mock_provider "panos" {} 

resource "panos_telemetry" "example" {
    threat_prevention_reports = false
    threat_prevention_data = false
    threat_prevention_packet_captures = false

    tags = {"k":"v"}

    lifecycle {
        create_before_destroy = true
    }
}
