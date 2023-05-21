variable "project" {
  default = "lloyds-test"
}
variable "account_id" {
  default ="lloyds.test.101@gmail.com"
}
variable "project_id" {
  default = "lloyds-test-387318"
}
variable "env" {
  default = "dev"
}


variable "name" {
  default = "lloyds"
}

variable "service" {
  default = ["iam.googleapis.com", "compute.googleapis.com", "bigquery.googleapis.com"]
}

variable "roles" {
  default = ["roles/storage.buckets.create", "roles/compute.networks.create", "roles/compute.admin", "roles/bigquery.admin"]
}

variable "region" {
  default = "europe-west2"
}

variable "zone" {
  default = "europe-west2-a"
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

# variable "project_id" {
#   default = ""
# }
