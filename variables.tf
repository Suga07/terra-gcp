variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}

variable "zone" {
  description = "GCP zone"
  type        = string
}

variable "machine_type" {
  description = "Instance machine type"
  type        = string
  default     = "e2-medium"
}

variable "disk_image" {
  description = "Disk image for the boot disk"
  type        = string
}

variable "network" {
  description = "VPC network for the instance"
  type        = string
}

variable "name" {
description = "name of the vm"
type = string
}

variable "gcp_sa_key" {
description = "gcp service account creds"
type = string
}
