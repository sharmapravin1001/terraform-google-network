rresource "google_compute_instance" "greenfield-instance1" {
  name         = "greenfield-instance1"
  machine_type = "f1-micro"
  zone         = "europe-west2-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = google_compute_network.greenfield-vpc.name
    subnetwork = google_compute_subnetwork.greenfield-subnet1.self_link
    
    access_config {
      // Ephemeral public IP
    }
  }

 metadata = {
  ssh-keys = "YourName:${file("<Your-own-path-of-id_rsa.pub>")}"
  } 
}
