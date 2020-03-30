# Create Security Group
resource "aws_security_group" "create_security_group" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = var.vpc_id

  tags = {
    Name = var.sg_tag
  }
}

# Create egress SG rule 
resource "aws_security_group_rule" "egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  description       = "All egress traffic"
  security_group_id = aws_security_group.create_security_group.id
}

# Create TCP SG rules
resource "aws_security_group_rule" "tcp" {
  count             = length(var.sg_tcp_ports)
  type              = "ingress"
  from_port         = var.sg_tcp_ports[count.index]
  to_port           = var.sg_tcp_ports[count.index]
  protocol          = "tcp"
  cidr_blocks       = [var.sg_tcp_cidrs[count.index]]
  description       = ""
  security_group_id = aws_security_group.create_security_group.id
}

# Create UDP SG rules
resource "aws_security_group_rule" "udp" {
  count             = length(var.sg_udp_ports)
  type              = "ingress"
  from_port         = var.sg_udp_ports[count.index]
  to_port           = var.sg_udp_ports[count.index]
  protocol          = "udp"
  cidr_blocks       = [var.sg_udp_cidrs[count.index]]
  description       = ""
  security_group_id = aws_security_group.create_security_group.id
}
