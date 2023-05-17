resource "google_compute_firewall" "allow-icmp" {
    name = "${var.name}-allow-icmp"
    network = google_compute_network.this.id
    allow {
        protocol ="icmp"
    }
    source_ranges = [var.myip]
}