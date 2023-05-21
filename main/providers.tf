terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.85.0"
    }
  }
}
provider "google" {
  project = "lloyds-test-387318"
  region  = "europe-west2"
  zone    = "europe-west2-a"
  # credentials =  file("${path.module}/../keys.json")
}


