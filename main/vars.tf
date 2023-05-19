variable "project_name" {
  default = "second-stage"
}

variable "name" {
  default = "lloyds"
}

variable "service" {
  default = ["iam.googleapis.com", "compute.googleapis.com", "bigquery.googleapis.com"]
}

variable "region" {
  default = "eu-east-1"
}

variable "zone" {
  default = "eu-east1-a"
}


variable "cidr_block" {
  default = "10.1.0.0/24"
}
variable "myip" {
  default = "2.218.76.86"
}

variable "machine_type" {
  default = "e2-medium"
}

variable "instance_count" {
  default = "1"
}

variable "image_name" {
  default = "debian-10-buster-v20230510"
}

variable "size" {
  default = "20"
}

variable "subnetwork" {
  default = ""
}

variable "members" {
  default = ["use:jane@email.com"]
}

variable "project_id" {
  default = ""
}
