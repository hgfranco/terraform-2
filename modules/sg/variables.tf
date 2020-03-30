#Security group variables
variable "vpc_id" {
}

variable "sg_name" {
}

variable "sg_description" {
}

variable "sg_tag" {
}

variable "sg_tcp_ports" {
  type        = list(string)
}

variable "sg_tcp_cidrs" {
  type        = list(string)
}

variable "sg_udp_ports" {
  type        = list(string)
}

variable "sg_udp_cidrs" {
  type        = list(string)
}

variable "sg_all_ports" {
  type        = list(string)
}

variable "sg_all_cidrs" {
  type        = list(string)
}
