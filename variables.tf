variable "resource_group_location" {
  default     = "north europe"
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  default     = "rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "environment_name" {
  default = "sbx"
}

variable "purpose" {
  default = "tfvm"
}

variable "resource_group_prefix" {
  default = "rg"
}
variable "storage_account_prefix" {
  default = "stacc"
}
variable "instance_id" {
  default = "1"
}

variable "cloud_service_provider" {
  default = "az"
}

variable "operating_system" {
  default = "lin"
}

variable "ssh_public_key_file" {
  type        = string
  description = "public SSH key for the user"
  default     = "MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAwiPMtWpjYPnsg154Cs+gzXKAO7oPOYHNNBAgr3zDKrgrYCu00jjPN0t949EX3lhmP7SSUbyF7ba5AfSOOoxQCi3p4wgcGbZO8Jos+QR6APG9Vi+eEm7xOL9gum9mgjUpTIxdyX8fI4VyF42dD5CSawtq9DjPO6k0FIT5DHRo3ItCDqfq51FcbihzL8pCsKdQbZtwib1MxGJ9g5LLnRKSqiRyexCa0yX3KKJSzORqDa7AMYsNMJe2Z+jm+VMkG8f+LIMk3r3V9GV12Nkl1X1lzbB/sRAbTK+MIFOV+stNFmVSXPim1L0mVVd9JIbASxMcRtf4sgKhqFZoYMnkC+BaPMPEc/ZZcqPN9F8NfTnqSGcptMCgi4r7gi2pj3MJ91aURnYwdkvdpJhJfMGd6l5+nw7ZtliLnuGUjZckOKFby9c1q35t6WnRke+0I5kC9uB6X3f2A5hszj+ZlcTcg0yDVGTc2Hz8I6jNhTdcIWG3q76iUMoW1fDEA7v4EbR7cDlwFN2pRl006uZ04FvjWrr4Z7t+oEqHT8FksK1STcaBVcOgytMcgHSwykfRToaDRAEBzhkarO3XAPCmQ0Yig8faY0qJYqL7yjqpKG6+gJmUelMIT5SXLkRZPZcCP2QAhv8A4BngANPPIF87AY9uyD0BSZXGXySWsQmQiRDQEXXEcCAwEAAQ=="
}

variable "default_python" {
  type        = string
  description = "Default Python version for the VM"
  default     = "3.10"
}

variable "user" {
  type        = string
  description = "New username"
  default     = "kawsarh"
}