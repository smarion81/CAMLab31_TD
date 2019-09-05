#####################################################################
##
##      Created 9/5/19 by admin. for project1
##
#####################################################################

## REFERENCE {"vsphere_network":{"type": "vsphere_reference_network"}}

terraform {
  required_version = "> 0.8.0"
}

provider "vsphere" {
  user           = "${var.user}"
  password       = "${var.password}"
  vsphere_server = "${var.vsphere_server}"

  allow_unverified_ssl = "${var.allow_unverified_ssl}"
  version = "~> 1.2"
}


data "vsphere_virtual_machine" "test1_template" {
  name          = "${var.test1_template_name}"
  datacenter_id = "${data.vsphere_datacenter.test1_datacenter.id}"
}

data "vsphere_datacenter" "test1_datacenter" {
  name = "${var.test1_datacenter_name}"
}

data "vsphere_datastore" "test1_datastore" {
  name          = "${var.test1_datastore_name}"
  datacenter_id = "${data.vsphere_datacenter.test1_datacenter.id}"
}

data "vsphere_network" "network1" {
  name          = "${var.network1_network_name}"
  datacenter_id = "${data.vsphere_datacenter.test1_datacenter.id}"
}

resource "vsphere_virtual_machine" "test1" {
  name          = "${var.test1_name}"
  datastore_id  = "${data.vsphere_datastore.test1_datastore.id}"
  num_cpus      = "${var.test1_number_of_vcpu}"
  memory        = "${var.test1_memory}"
  guest_id = "${data.vsphere_virtual_machine.test1_template.guest_id}"
  resource_pool_id = "${var.test1_resource_pool}"
  network_interface {
    network_id = "${data.vsphere_network.network1.id}"
  }
  clone {
    template_uuid = "${data.vsphere_virtual_machine.test1_template.id}"
  }
  disk {
    name = "${var.test1_disk_name}"
    size = "${var.test1_disk_size}"
  }
}