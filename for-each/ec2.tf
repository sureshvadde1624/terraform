resource "aws_instance" "roboshop" {
    for_each = var.instance_names
    ami = var.ami
    instance_type = each.value
    security_groups = [aws_security_group.allow_all.name]
    tags = {
        Name = each.key
        Environment = "DEV"
        Terraform  = true
        Project = "roboshop"
    }
}

resource "aws_route53_record" "records" {
  for_each = aws_instance.roboshop
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 300
  records = [each.value.private_ip]
}