resource "aws_instance" "roboshop" {
    count = length(var.instance_names)
    ami = var.ami
    instance_type = var.instance_names[count.index] == "mongodb" ? "t3.medium" : "t2.micro"
    tags = {
        Name = var.instance_names[count.index]
        Environment = "DEV"
        Terraform  = true
        Project = "roboshop"
    }
}

resource "aws_route53_record" "records" {
  count = length(aws_instance.roboshop)
  zone_id = var.zone_id
  name    = "${var.instance_names[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 300
  records = [aws_instance.roboshop[count.index].private_ip]
}