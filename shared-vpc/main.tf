resource "random_id" "host-project" {
    byte_length = 8
  }
resource "random_id" "service1-project" {
    byte_length = 8
  }
resource "random_id" "service2-project" {
    byte_length = 8
  }


# A host project provides network resources to associated service projects.
resource "google_compute_shared_vpc_host_project" "host" {
  name  = "Host Project"
  project = ${random_id.host-project.hex}
  org_id = var.id_org
}

# A service project gains access to network resources provided by its
# associated host project.
resource "google_compute_shared_vpc_service_project" "service1" {
  host_project    = google_compute_shared_vpc_host_project.host.project
  service_project = "service-project-id-1"
  name  = "Host Project"
  project = ${random_id.host-project.hex}
  org_id = var.id_org
}

resource "google_compute_shared_vpc_service_project" "service2" {
  host_project    = google_compute_shared_vpc_host_project.host.project
  service_project = "service-project-id-2"
}
