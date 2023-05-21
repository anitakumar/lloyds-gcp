resource "google_compute_instance" "this" {
  count        = var.instance_count
  name         = "${var.name}-${var.env}-count.index"
  machine_type = var.machine_type
  zone         = var.zone
  project = var.project
  tags = ["Name", "${var.name}-${var.env}-count.index"]

  boot_disk {
    initialize_params {
      image = var.image_name
      size = var.size
    }
  }
  network_interface {
    network = var.vpc_id
    subnetwork = var.subnetwork
  }
}