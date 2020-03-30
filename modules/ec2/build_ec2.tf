resource "aws_instance" "ec2" {
  count                  = var.ec2_instance_count
  ami                    = var.ec2_instance_ami_id
  instance_type          = var.ec2_instance_type
  subnet_id              = var.ec2_instance_subnet_id
  key_name               = var.ec2_instance_key_name
  vpc_security_group_ids = var.vpc_security_group_ids
}
