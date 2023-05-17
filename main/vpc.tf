module "vpc" {
    source = "../modules/network"
    name = var.name
    region = var.region
    cidr_block = "10.1.0.0/24"
    myip = var.myip
}