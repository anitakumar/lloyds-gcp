module "vpc" {
  source     = "../modules/network"
  name       = var.name
  region     = var.region
  cidr_block = "10.1.0.0/24"
  myip       = var.myip
}

module "compute" {
  source       = "../modules/compute"
  name         = var.name
  zone         = var.zone
  machine_type = var.machine_type
  vpc_id       = module.vpc.network_id
  size         = var.size
  image_name   = var.image_name
  subnetwork   = module.vpc.subnet_id

}

module "vertex" {
  source       = "../modules/compute"
  name         = var.name
  zone         = var.zone
  machine_type = var.machine_type
  vpc_id       = module.vpc.network_id
  size         = var.size
  image_name   = var.image_name
  subnetwork   = module.vpc.subnet_id

}

module "bigquery" {
  source   = "../modules/bigquery"
  name     = var.name
  location = var.zone
}