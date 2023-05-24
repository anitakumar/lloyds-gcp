
resource "google_notebooks_instance" "instance" {
  name = "${var.name}-vertex"
  location = var.zone
  machine_type = var.machine_type

  # vm_image {
  #   project      = "deeplearning-platform-release"
  #   image_family = "tf-latest-cpu"
  # }

  container_image {
    repository = "gcr.io/deeplearning-platform-release/base-cpu"
    tag = "latest"
  }

#  instance_owners = [ "my@service-account.com"]
#  service_account = "my@service-account.com"

  install_gpu_driver = true
  boot_disk_type = "PD_SSD"
  boot_disk_size_gb = 110

  no_public_ip = true
  no_proxy_access = true

  network = var.vpc_id
  subnet = var.subnetwork

  labels = {
    k = var.name
  }

  metadata = {
    terraform = "true"
  }
  
}

data "google_compute_network" "this" {
  name = var.name
}

data "google_compute_subnetwork" "this" {
  name   = var.name
  region = var.region
}