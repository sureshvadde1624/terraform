variable "ami" {
    default = "ami-0f3c7d07486cad139"
}

variable "instance_type" {
    default = "t2.micro"
}

variable "sg_name" {
    default = "allow_all"
}

variable "sg_cidr" {
    default = ["0.0.0.0/0"]
}

variable "tags" {
    default = {
        Name = "roboshop"
        Environment = "DEV"
        Terraform  = true
        Project = "roboshop"
    }
}