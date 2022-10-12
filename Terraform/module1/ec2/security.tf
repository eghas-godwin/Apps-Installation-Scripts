
resource "aws_security_group" "custom_ports" {
  name        = "custom_ports"
  description = "Allow Custom Ports inbound traffic"
  
  dynamic "ingress" {
    iterator = port
    for_each = var.ingressrules
    content {
        from_port   = port.value
        to_port     = port.value
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
  }

  dynamic "egress" {
    iterator = port
    for_each = var.egressrules
    content {
        from_port   = port.value
        to_port     = port.value
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
  }
  tags = {
    Name = "dev_sg"
  }
}
