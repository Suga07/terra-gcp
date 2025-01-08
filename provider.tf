terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.12.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

terraform { 
  cloud { 
    
    organization = "Sample_test" 

    workspaces { 
      name = "gcp-workspace" 
    } 
  } 
}