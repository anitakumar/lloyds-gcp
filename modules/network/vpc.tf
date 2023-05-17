resource "google_compute_network" "this" {
    name =  var.name
    auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "this" {
    name = var.name
    ip_cidr_range = "10.1.0.0/24"
    network = google_compute_network.this.id
    region = var.region
    private_ip_google_access = true
}