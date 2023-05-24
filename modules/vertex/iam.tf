# https://cloud.google.com/iam/docs/understanding-roles
# data "google_iam_policy" "admin" {
#   binding {
#     role = "roles/viewer"
#     members = ["user:anitakumar076@email.com" ]
#   }
# }

# resource "google_notebooks_instance_iam_policy" "policy" {
#   # project = google_notebooks_instance.instance.project
#   # location = google_notebooks_instance.instance.location
#   # location= var.location
#   instance_name = google_notebooks_instance.instance.name
#   policy_data = data.google_iam_policy.admin.policy_data
# }

resource "google_notebooks_instance_iam_binding" "binding" {
  project = google_notebooks_instance.instance.project
  location = google_notebooks_instance.instance.location
  instance_name = google_notebooks_instance.instance.name
  role = "roles/notebooks.admin"
  members = [
    "user:anitakumar076@gmail",
  ]
}
# or


# resource "google_notebooks_instance_iam_member" "member" {
#   project = google_notebooks_instance.instance.project
#   provider = "google-beta"
#   location = var.zone
#   instance_name = google_notebooks_instance.instance.name
#   role = "roles/notebooks.admin"
#   member = "user:anitakumar076@gmail"
# }