resource "google_compute_instance" "vm_instance" {
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.disk_image
    }
  }

  network_interface {
    network = var.network
    access_config {
    }
  }
  metadata = {
    foo = "bar"
  }
}
