 resource "google_compute_subnetwork" "catchup-io1" {
  name                     = "catchup-io1"
  ip_cidr_range            = "10.246.10.0/24"
  region                   = "us-central1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "catchup-io2" {
  name                     = "catchup-io2"
  ip_cidr_range            = "10.246.11.0/24"
  region                   = "us-central1"
  network                  = google_compute_network.prod.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "catchup-to1" {
  name                     = "catchup-to1"
  ip_cidr_range            = "10.246.20.0/24"
  region                   = "asia-southeast1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}
resource "google_compute_subnetwork" "catchup-to2" {
  name                     = "catchup-to2"
  ip_cidr_range            = "10.246.21.0/24"
  region                   = "asia-southeast1"
  network                  = google_compute_network.prod.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "catchup-br1" {
  name                     = "catchup-br1"
  ip_cidr_range            = "10.246.30.0/24"
  region                   = "southamerica-east1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "catchup-br2" {
  name                     = "catchup-br2"
  ip_cidr_range            = "10.246.31.0/24"
  region                   = "southamerica-east1"
  network                  = google_compute_network.prod.id
  private_ip_google_access = true
}

