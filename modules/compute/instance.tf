resource "google_compute_address" "this" {
  name = "${var.name}-vertex-ip"
}

resource "google_compute_instance" "this" {
  count        = var.instance_count
  name         = "${var.name}-${var.env}-${count.index}"
  machine_type = var.machine_type
  zone         = var.zone
  # project = var.project
  # tags = ["Name", "${var.name}"]

  boot_disk {
    initialize_params {
      image = var.image_name
      size = var.size
    }
  }
  network_interface {
    network = var.vpc_id
    subnetwork = var.subnetwork
    access_config {
      nat_ip = google_compute_address.this.address
      }
    
  }
}