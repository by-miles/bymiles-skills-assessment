resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_security_group" "bymiles-security-group" {
  description = "A security group"
  vpc_id      = "${aws_vpc.main.id}"
  name        = "bymiles-security-group"
}

resource "aws_security_group_rule" "http" {
  security_group_id = "${aws_security_group.bymiles-security-group.id}"
  type              = "ingress"
  protocol          = "TCP"
  from_port         = 80
  to_port           = 80
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "ingress" {
  security_group_id = "${aws_security_group.bymiles-security-group.id}"
  type              = "ingress"
  protocol          = "TCP"
  from_port         = 32768
  to_port           = 61000
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "egress" {
  security_group_id = "${aws_security_group.bymiles-security-group.id}"
  type              = "egress"
  protocol          = "-1"
  from_port         = 0
  to_port           = 0
  cidr_blocks       = ["0.0.0.0/0"]
}