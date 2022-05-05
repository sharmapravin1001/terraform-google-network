resource "google_compute_instance" "pravin-on-google1" {
  name         = "pravin-on-google1"
  machine_type = "f1-micro"
  zone         = "europe-west2-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = google_compute_network.pravin-vpc.name
    subnetwork = google_compute_subnetwork.pravin-subnetwork1.self_link
    
    access_config {
      // Ephemeral public IP
    }
  }

 metadata = {
  ssh-keys = "parvesha:${file("<Your-own-path-of-id_rsa.pub>")}"
  } 
}

