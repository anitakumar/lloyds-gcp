terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.65.2"
    }
  }
}
provider "google" {
  project = "lloyds-386918"
  region  = "eu-west-1"
  zone    = "eu-west1-a"

}


