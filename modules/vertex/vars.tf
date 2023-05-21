variable "name" {
    default = "lloyds"
}

variable "env" {
  default = "dev"
}

variable "project" {
  default = ""
}

variable "region" {
    default = "europe-west2"
}

variable "location" {
    default = "europe-west2-a"
}


variable "myip" {
    default = ""
}
variable "subnetwork" {
    default = ""
}

variable "image_name" {
    default = ""
}

variable "size" {
    default = ""
}

variable "machine_type" {
    default = "e2-medium"
}

variable "members" {
    default = ["user:anitakumar076@email.com" ]
}

variable "vpc_id" {
    default = ""
}

variable "zone" {
    default = ""
}