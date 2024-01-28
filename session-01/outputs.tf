output "public_ip" {
  value = aws_instance.roboshop.public_ip
}

output "sg_id" {
  value = aws_security_group.allow_all.id
}