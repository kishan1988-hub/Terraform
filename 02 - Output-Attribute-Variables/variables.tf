variable "elb_name" {
  default = "Elastic-LB-MK"
  type = string
}

variable "az" {
  type = list
}

variable "timeout" {
  type = number
}
