resource "google_compute_network" "pravin-vpc" {
  project = "your-own-project-name-example-sandbox-123"
  name = "pravin-vpc"
  auto_create_subnetworks = false
}


resource "google_compute_subnetwork" "pravin-subnetwork1" {
  name          = "pravin-subnetwork1"
  ip_cidr_range = "10.0.1.0/24"
  region        = "europe-west2"
  network       = google_compute_network.pravin-vpc.id
}


resource "google_compute_subnetwork" "pravin-subnetwork2" {
  name          = "pravin-subnetwork2"
  ip_cidr_range = "10.0.2.0/24"
  region        = "europe-west2"
  network       = google_compute_network.pravin-vpc.id
}
