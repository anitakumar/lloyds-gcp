variable "name" {
    default = "lloyds"
}
variable "machine_type" {
    default = "n1-standard-1"
}

variable "instance_count" {
    default = "1"
}
variable "zone" {
    default = "eu-west1-a"
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