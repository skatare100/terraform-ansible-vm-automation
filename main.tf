terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.1"
    }
  }
}

provider "null" {}

resource "null_resource" "start_vm" {
  provisioner "local-exec" {
    command = "cmd /C \"\"C:\\Program Files (x86)\\VMware\\VMware Workstation\\vmrun.exe\" start \"C:\\Users\\soura\\Documents\\Ubuntu 64-bit (2)\\Ubuntu 64-bit (2).vmx\"\""
  }
}

resource "null_resource" "stop_vm" {
  provisioner "local-exec" {
    when    = destroy
    command = "cmd /C \"\"C:\\Program Files (x86)\\VMware\\VMware Workstation\\vmrun.exe\" stop \"C:\\Users\\soura\\Documents\\Ubuntu 64-bit (2)\\Ubuntu 64-bit (2).vmx\"\""
  }
}

