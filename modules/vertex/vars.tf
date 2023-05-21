variable "name" {
    default = "lloyds"
}

variable "env" {
  default = "dev"
}

variable "region" {
    default = "eu-west-1"
}

variable "myip" {
    default = ""
}

variable "machine_type" {
    default = "e2-medium"
}

variable "members" {
    default = ["use:jane@email.com" ]
}