 # https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
resource "google_compute_router" "io-router1" {
  name    = "io-router1"
  region  = "us-central1"
  network = google_compute_network.main.id
}

resource "google_compute_router" "io-router2" {
  name    = "io-router2"
  region  = "us-central1"
  network = google_compute_network.prod.id
  }

resource "google_compute_router" "to-router1" {
  name    = "to-router1"
  region  = "asia-southeast1"
  network = google_compute_network.main.id
}

resource "google_compute_router" "to-router2" {
  name    = "to-router2"
  region  = "asia-southeast1"
  network = google_compute_network.prod.id
}

resource "google_compute_router" "br-router1" {
  name    = "br-router1"
  region  = "southamerica-east1"
  network = google_compute_network.main.id
}

resource "google_compute_router" "br-router2" {
  name    = "br-router2"
  region  = "southamerica-east1"
  network = google_compute_network.prod.id
}
