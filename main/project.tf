resource "google_project" "this" {
  name       = var.name
  project_id = var.project_name
}

resource "google_project_service" "this" {
  count   = length(var.service)
  project = google_project.this.id
  service = var.service[count.index]

  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_dependent_services = true
}