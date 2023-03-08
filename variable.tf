variable "user" {
  type  = object({
    username = string
    password = string
    vsphere_server =string
  })
  default     = {
    username = "root"
    password = "PASSWORD"
    vsphere_server = "IP"
  }
  description = "description"
}





variable "vm_name" {
  type        = string
  default     = "vm1"
  description = "vmname"
}

variable "resource_pool_id" {
  type        = string
  default     = "ha-root-pool"
  description = "resource_pool_id"
}

variable "datastore_id" {
  type        = string
  default     = "63fc906d-d24b0493-ff7a-000c2975c908"
  description = "datastore_id"
}

variable "num_cpus" {
  type        = number
  default     = "1"
  description = "num_cpus"
}

variable "memory" {
  type        = number
  default     = "1024"
  description = "memory"
}

variable "guest_id" {
  type        = string
  default     = "other3xlinux64Guest"
  description = "guest_id"
}

variable "network_interface" {
  type        = string
  default     = "HaNetwork-VM Network"
  description = "network_interface"
}

variable "disk" {
  type        = object({
    label = string
    size = number
  })
  default = {
    label = "disk0"
      size = 10
  }

}
