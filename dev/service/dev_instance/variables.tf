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

variable "ec2_environment" {
  default = "dev"
}

variable "ec2_vpc_tag_lookup" {
  default = "*172-30-3*"
}

variable "ec2_tl_domain_name" {
  default = "tab"
}

variable "ec2_app_name" {
  default = "aws-ec2-franco"
}

variable "ec2_service" {
  default = "dev_instance"
}

variable "ec2_create_ip" {
  default = "false"
}

variable "ec2_create_volume" {
  default = "true"
}

variable "ec2_device_name" {
  type = list(string)

  default = [
    "/dev/sda1",
    "/dev/sdb",
  ]
}

variable "ec2_ebs_volume_size" {
  type = list(string)

  default = [
    "100",
    "300",
  ]
}

variable "ec2_ebs_volume_type" {
  default = "gp2"
}

variable "ec2_create_iam" {
  default = "false"
}

variable "ec2_iam_role_name" {
  type = list(string)

  default = []
}

variable "ec2_iam_instance_profile_name" {
  type = list(string)

  default = []
}

variable "ec2_iam_policy_name" {
  type = list(string)

  default = []
}

variable "ec2_iam_policy_description" {
  type = list(string)

  default = []
}

variable "ec2_iam_policy_attachment_name" {
  type = list(string)

  default = []
}

variable "ec2_iam_instance_profile_set" {
  default = "false"
}

