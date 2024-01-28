variable "ami" {
    default = "ami-0f3c7d07486cad139"
}

variable "instance_names" {
    default = {
        web = "t2.micro"
        mysql =  "t2.micro"
        mongodb = "t3.medium"
        redis =  "t2.micro"
        rabbitmq =  "t2.micro"
        cart =  "t2.micro"
        catalogue =  "t2.micro"
        shipping =  "t2.micro"
        user =  "t2.micro"
        payment =  "t2.micro"
    }
}

variable "zone_id" {
    default = "Z06687332YZVYJQOQH873"
}

variable "domain_name" {
    default = "sureshdevops.online"
}

variable "sg_name" {
    default = "allow_all"
}

# variable "sg_cidr" {
#     default = ["0.0.0.0/0"]
# }

variable "ingress" {
    default = [
        {
            from_port = 80
            to_port = 80
            description = "allowing 80 from internet"
            protocol = "http"
            cidr_blocks = ["0.0.0.0/0"]
        },
        {
            from_port = 443
            to_port = 443
            description = "allowing 443 from internet"
            protocol = "https"
            cidr_blocks = ["0.0.0.0/0"]
        },
        {
            from_port = 22
            to_port = 22
            description = "allowing 22 from internet"
            protocol = "ssh"
            cidr_blocks = ["0.0.0.0/0"]
        }
    ]
}