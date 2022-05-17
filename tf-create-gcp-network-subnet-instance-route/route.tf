resource "google_compute_router" "greenfield-router1" {
  name                          = "greenfield-router1"
  network                       = google_compute_network.greenfield-vpc.id
  bgp {
    asn = 64514
  }
}

resource "google_compute_firewall" "greenfield-firewall" {
  name    = "greenfield-firewall"
  network = google_compute_network.greenfield-vpc.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22","80", "8080", "1000-2000"]
  }

  source_ranges = ["0.0.0.0/0"]
}

/*
resource "google_compute_router_nat" "nat" {
  name                               = "my-router-nat"
  router                             = google_compute_router.greenfield-router1.name
  region                             = google_compute_router.greenfield-router1.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
 
}
*/
