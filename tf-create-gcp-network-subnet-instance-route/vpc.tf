resource "google_compute_network" "greenfield-vpc" {
  project = "your-own-project-name-example-sandbox-123"
  name = "greenfield-vpc"
  auto_create_subnetworks = false
}


resource "google_compute_subnetwork" "greenfield-subnet1" {
  name          = "greenfield-subnet1"
  ip_cidr_range = "10.0.1.0/24"
  region        = "europe-west2"
  network       = google_compute_network.greenfield-vpc.id
}


resource "google_compute_subnetwork" "greenfield-subnet2" {
  name          = "greenfield-subnet2"
  ip_cidr_range = "10.0.2.0/24"
  region        = "europe-west2"
  network       = google_compute_network.greenfield-vpc.id
}
