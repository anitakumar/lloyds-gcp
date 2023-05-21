variable "name" {
    default = "lloyds"
}

variable "env" {
  default = "dev"
}

variable "project_id" {
    default = "lloyds-test-387318"
}

variable "project" {
    default = "lloyds-test"
}


variable "machine_type" {
    default = "n1-standard-1"
}

variable "instance_count" {
    default = "1"
}
variable "zone" {
    default = "europe-west2-a"
}

variable "image_name" {
    default = "debian-10-buster-v20230510"
}

variable "size" {
    default = "20" 
}

variable "vpc_id" {
    default = ""
}

variable "subnetwork" {
    default = ""
}