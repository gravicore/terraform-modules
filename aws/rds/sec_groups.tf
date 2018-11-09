resource "aws_security_group" "this" {
  count       = "${local.creat_security_group}"
  name        = "rds-security-group"
  description = "Allow internal and VPN traffic"
  vpc_id      = "${var.vpc_id}"

  ingress {
    from_port   = "${var.port}"
    to_port     = "${var.port}"
    protocol    = "6"
    cidr_blocks = ["${var.ingress_sg_cidr}"]
  }

  egress {
    from_port   = "${var.port}"
    to_port     = "${var.port}"
    protocol    = "6"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
