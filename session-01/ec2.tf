resource "aws_instance" "roboshop" {
    ami = "ami-0f3c7d07486cad139"
    instance_type = "t2.micro"
}