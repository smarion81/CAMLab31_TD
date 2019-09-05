#####################################################################
##
##      Created 9/5/19 by admin. for project1
##
#####################################################################

variable "user" {
  type = "string"
  description = "Generated"
}

variable "password" {
  type = "string"
  description = "Generated"
}

variable "vsphere_server" {
  type = "string"
  description = "Generated"
}

variable "allow_unverified_ssl" {
  type = "string"
  description = "Generated"
}

variable "test1_name" {
  type = "string"
  description = "Virtual machine name for test1"
}

variable "test1_number_of_vcpu" {
  type = "string"
  description = "Number of virtual cpu's."
}

variable "test1_memory" {
  type = "string"
  description = "Memory allocation."
}

variable "test1_disk_name" {
  type = "string"
  description = "The name of the disk. Forces a new disk if changed. This should only be a longer path if attaching an external disk."
}

variable "test1_disk_size" {
  type = "string"
  description = "The size of the disk, in GiB."
}

variable "test1_template_name" {
  type = "string"
  description = "Generated"
}

variable "test1_datacenter_name" {
  type = "string"
  description = "Generated"
}

variable "test1_datastore_name" {
  type = "string"
  description = "Generated"
}

variable "test1_resource_pool" {
  type = "string"
  description = "Resource pool."
}

variable "network1_network_name" {
  type = "string"
  description = "Generated"
}

