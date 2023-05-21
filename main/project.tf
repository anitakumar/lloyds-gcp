data "google_project" "this"{
  project_id = var.project_id
}


data "google_service_account" "this" {
  account_id = var.account_id
  project = var.project_id

}

# resource "google_project_iam_binding" "this" {
#   count = length(var.roles)
#   role               = var.roles[count.index]
#   members = [
#     "user:${var.account_id}",
#   ]
#   project = data.google_project.this.id
#   depends_on = [data.google_service_account.this]
# }

# resource "google_project_service" "this" {
#   # count   = length(var.service)
#   project = data.google_project.this.id
#   # service = var.service[count.index]
#   service = "compute.googleapis.com"
#   timeouts {
#     create = "30m"
#     update = "40m"
#   }

#   # disable_dependent_services = true
# }
