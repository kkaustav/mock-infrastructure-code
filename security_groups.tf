resource "aws_security_group" "web_server_firewall" {
  name        = "web-server-sg"
  description = "Insecure production security group"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"] # VULNERABILITY: Publicly open SSH port!
  }
}
