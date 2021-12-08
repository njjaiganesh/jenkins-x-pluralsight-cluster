module "jx" {
  source  = "jenkins-x/jx/google"
  version = "1.10.11"
  # insert the 1 required variable here
  gcp_project = "pluralsightjenkinsx"
  cluster_name="ps-jx-cluster"
}
terraform {
    backend "gcs" {
        bucket = "ps-jx-terraform-state-filesjj"
        prefix="terraform/state"
    }
}