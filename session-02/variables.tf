variable "ami" {
    default = "ami-0f3c7d07486cad139"
}

variable "instance_names" {
    default = ["web", "mongodb", "mysql", "redis", "rabbitmq", "catalogue", "cart", "user", "payment", "shipping"]
}

variable "zone_id" {
    default = "Z06687332YZVYJQOQH873"
}

variable "domain_name" {
    default = "sureshdevops.online"
}