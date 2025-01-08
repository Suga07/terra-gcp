resource "google_compute_instance" "vm_instance" {
  name         = "vm-${terraform.workspace}"
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
    workspace = terraform.workspace
  }
}