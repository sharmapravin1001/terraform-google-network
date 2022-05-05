resource "google_compute_router" "pravin-router1" {
  name                          = "pravin-router1"
  network                       = google_compute_network.pravin-vpc.id
  bgp {
    asn = 64514
  }
}

resource "google_compute_firewall" "pravin-firewall" {
  name    = "pravin-firewall"
  network = google_compute_network.pravin-vpc.name

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
  router                             = google_compute_router.pravin-router1.name
  region                             = google_compute_router.pravin-router1.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
 
}
*/