resource "aws_security_group" "allow_all" {
  name = var.sg_name
  description = "allow http, https, ssh" 
  dynamic "ingress" {
    for_each = var.ingress
    content {
      from_port = ingress.value.from_port
      to_port = ingress.value["to_port"]
      description = ingress.value.description
      protocol = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks
    }
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}