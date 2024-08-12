module "my-vms" {
  source = "./virtual-machine-module"

  rg_name = var.rg_name
  vm_count = 3
  location = var.location

  vnet_name = "my-vnet"
  vet_address_space = "10.0.0.0/16"

  subnet_name = "sub1"
  subnet_prefix = "10.0.1.0/24"

  vm_name_prefix = "biswa"

  path = "/home/adminuser/.ssh/authorized_keys"
  key_data = file("C:\\Users\\visha\\.ssh\\id_rsa.pub")

}