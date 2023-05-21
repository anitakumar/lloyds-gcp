resource "google_compute_network" "this" {
    name =  var.name
    auto_create_subnetworks = false
    project =  var.project
}

resource "google_compute_subnetwork" "this" {
    name = var.name
    ip_cidr_range = var.cidr_block
    network = google_compute_network.this.id
    region = var.region
    private_ip_google_access = true
    project =  var.project
}