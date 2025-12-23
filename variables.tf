variable "project_name" {
    
}

variable "environment" {

}

variable "vpc_cidr" {

}

variable "enable_dns_hostnames" {
    default = true
}

variable "common_tags" {
    type = map
    default = {}
}

variable "vpc_tags" {
    default = {}
}

variable "igw_tags" {
    default = {}
}

variable "public_subnet_cidrs" {
    type = list
     validation {
    condition  = length(var.public_subnet_cidrs) == 2
    error_message = "Please provide 2 valid subnet CIDR."
  }
}


variable "private_subnet_cidr" {
    validation {
    condition     = length(var.private_subnet_cidr) == 2
    error_message = "Please provide 2 valid subnet CIDR."
  }
}

variable "database_subnet_cidr" {
    validation {
    condition     = length(var.database_subnet_cidr) == 2
    error_message = "Please provide 2 valid subnet CIDR."
  }
}

variable "is_peering_requred" {
  default = false
}