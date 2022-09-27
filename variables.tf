variable "region" {
  type = string
}

variable "compartment_id" {
    type = string
}

variable "vnc_cidr" {
    type = string
}

variable "availability_domain" {
    type = string

}

variable "public_subnet_cidr" {
    type = string
}

variable "private_subnet_cidr" {
    type = string
}

variable "instance_shape" {
    type = string
}

variable "instance_image" {
    type = string
}