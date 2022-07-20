variable "elb_name" {
  default = "Elastic-LB-MK"
  type    = string
}

variable "az" {
  type = list(any)
}

variable "timeout" {
  type = number
}

variable "istest" {

}
