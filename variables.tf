variable "rg_name" {
  type = string
  description = "rg"
  default = "biswa-rg-impl-1"
}
variable "storage_account_name" {
  type = string
  description = "storage"
  default = "biswastorageaccount12345impl1"
}

variable "location" {
  type = string
  description = "location"
  default = "East US"
}