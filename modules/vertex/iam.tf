# https://cloud.google.com/iam/docs/understanding-roles
data "google_iam_policy" "admin" {
  binding {
    role = "roles/notebooks.admin"
    members = [
      var.members  
    ]
  }
}

resource "google_notebooks_instance_iam_policy" "policy" {
  project = google_notebooks_instance.instance.project
  location = google_notebooks_instance.instance.location
  instance_name = google_notebooks_instance.instance.name
  policy_data = data.google_iam_policy.admin.policy_data
}

# or
# resource "google_notebooks_instance_iam_member" "member" {
#   project = google_notebooks_instance.instance.project
#   location = google_notebooks_instance.instance.location
#   instance_name = google_notebooks_instance.instance.name
#   role = "roles/viewer"
#   member = "user:jane@example.com"
# }