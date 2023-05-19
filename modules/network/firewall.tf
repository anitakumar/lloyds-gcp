resource "google_compute_firewall" "allow-ingress" {
    name = "${var.name}-allow-ingress"
    network = google_compute_network.this.id
    allow {
        protocol ="icmp"
    }
    allow {
        protocol = "tcp"
        ports    = ["80", "8080", "1000-2000"]
    }

    allow {
        protocol = "ssh"
        ports = ["22"]
    }

    source_ranges = [var.myip]
}