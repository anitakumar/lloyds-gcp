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

# or
resource "google_notebooks_instance_iam_member" "member" {
  # project = google_notebooks_instance.instance.project
  location = var.zone
  instance_name = "${var.name}-vertex"
  role = "roles/viewer"
  member = "serviceaccount:vertex-service-account@lloyds-test-387318.iam.gserviceaccount.com"
}