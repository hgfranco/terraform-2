# Define AWS profile and region
provider "aws" {
 profile = var.aws_profile
 region  = var.aws_region
}

# Configure the terraform S3 backend to store state
terraform {
  backend "s3" {
    bucket = "tablet-terraform-state"
    key    = "dev-instance/terraform.tfstate"
    region = "us-east-1"
  }
}

# Create security groups
module "build_sg" {
  source         = "../../../modules/sg/"
  vpc_id         = var.vpc_id
  sg_name        = var.sg_name
  sg_description = var.sg_description
  sg_tag         = var.sg_tag
  sg_tcp_ports   = var.sg_tcp_ports
  sg_tcp_cidrs   = var.sg_tcp_cidrs
  sg_udp_ports   = var.sg_udp_ports
  sg_udp_cidrs   = var.sg_udp_cidrs
  sg_all_ports   = var.sg_all_ports
  sg_all_cidrs   = var.sg_all_cidrs
}

# Build the EC2 application instance
module "build_ec2" {
  source                         = "../../../modules/ec2/"
  vpc_id                         = var.vpc_id
  ec2_instance_count             = var.ec2_instance_count
  ec2_instance_ami_id            = var.ec2_instance_ami_id
  ec2_instance_type              = var.ec22_instance_type
  ec2_instance_subnet_id         = var.ec2_instance_subnet_id
  ec2_instance_key_name          = var.ec2_instance_key_name
  vpc_security_group_ids         = [module.build_sg.this_sg_id]
  ec2_environment                = var.ec2_environment
  ec2_vpc_tag_lookup             = var.ec2_vpc_tag_lookup
  ec2_tl_domain_name             = var.ec2_tl_domain_name
  ec2_app_name                   = var.ec2_app_name
  ec2_service                    = var.ec2_service
  ec2_create_ip                  = var.ec2_create_ip
  ec2_create_volume              = var.ec2_create_volume
  ec2_device_name                = var.ec2_device_name
  ec2_ebs_volume_size            = var.ec2_ebs_volume_size
  ec2_ebs_volume_type            = var.ec2_ebs_volume_type
  ec2_create_iam                 = var.ec2_create_iam
  ec2_iam_role_name              = var.ec2_iam_role_name
  ec2_iam_instance_profile_name  = var.ec2_iam_instance_profile_name
  ec2_iam_policy_name            = var.ec2_iam_policy_name
  ec2_iam_policy_description     = var.ec2_iam_policy_description
  ec2_iam_policy_attachment_name = var.ec2_iam_policy_attachment_name
  ec2_iam_instance_profile_set   = var.ec2_iam_instance_profile_set
}

