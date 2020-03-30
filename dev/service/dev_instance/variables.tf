# Global variables
variable "aws_profile" {
  default = "tablet"
}

variable "aws_region" {
  default = "us-east-1"
}

# Security group variables
variable "vpc_id" {
  default = []
}

variable "sg_name" {
  default = "franco02_ec2_sg"
}

variable "sg_description" {
  default = "franco02 EC2 security group"
}

variable "sg_tag" {
  default = "franco02_ec2_sg"
}

variable "sg_tcp_ports" {
  type = list(string)
  default = [
    "80",
    "80",
    "443",
    "443",
    "15672",
    "15672",
    "9200",
    "9200",
  ]
}

variable "sg_tcp_cidrs" {
  type = list(string)
  default = [
    "10.0.0.0/8",
    "172.30.0.0/16",
    "10.0.0.0/8",
    "172.30.0.0/16",
    "10.0.0.0/8",
    "172.30.0.0/16",
    "10.0.0.0/8",
    "172.30.0.0/16",
  ]
}

variable "sg_udp_ports" {
  type    = list(string)
  default = []
}

variable "sg_udp_cidrs" {
  type    = list(string)
  default = []
}

variable "sg_all_ports" {
  type    = list(string)
  default = []
}

variable "sg_all_cidrs" {
  type    = list(string)
  default = []
}

# EC2 app instance variables
variable "ec2_instance_count" {
  default = "1"
}

variable "ec2_instance_ami_id" {
  default = []
}

variable "ec2_instance_type" {
  default = "t3.xlarge"
}

variable "ec2_instance_subnet_id" {
  default = []
}

variable "ec2_instance_key_name" {
  default = "Ops"
}

# variable "vpc_security_group_ids" {
#   description = "Security Group ID"
# }


