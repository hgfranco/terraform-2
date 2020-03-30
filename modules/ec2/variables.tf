# Global variables
variable "aws_profile" {
}

variable "aws_region" {
}

# Security group variables
variable "vpc_id" {
}

variable "sg_name" {
}

variable "sg_description" {
}

variable "sg_tag" {
}

variable "sg_tcp_ports" {
  type = list(string)
}

variable "sg_tcp_cidrs" {
  type = list(string)
}

variable "sg_udp_ports" {
  type    = list(string)
}

variable "sg_udp_cidrs" {
  type    = list(string)
}

variable "sg_all_ports" {
  type    = list(string)
}

variable "sg_all_cidrs" {
  type    = list(string)
}

# EC2 app instance variables
variable "ec2_instance_count" {
}

variable "ec2_instance_ami_id" {
}

variable "ec2_instance_type" {
}

variable "ec2_instance_subnet_id" {
}

variable "ec2_instance_key_name" {
}

# variable "vpc_security_group_ids" {
#   description = "Security Group ID"
# }

