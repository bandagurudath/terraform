variable "project_name" {
  type = string
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "common_tags" {
  type = map(any)
}

variable "vpc_tags" {
  type    = map(any)
  default = {}
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
  type    = bool
  default = true
}

variable "igw_tags" {
  type = map
  default = {}
}

variable "public_subnet_cidrs" {
  type = list
  validation {
    condition = length(var.public_subnet_cidrs)==2
    error_message = "Please provide 2 valid subnet CIDR"
  }
  
}

variable "public_subnet_cidrs_tags" {
  type = map
  default = {}
}


variable "private_subnet_cidrs" {
  type = list
  validation {
    condition = length(var.private_subnet_cidrs)==2
    error_message = "Please provide 2 valid subnet CIDR"
  }
  
}

variable "private_subnet_cidrs_tags" {
  type = map
  default = {}
}

variable "database_subnet_cidrs" {
  type = list
  validation {
    condition = length(var.database_subnet_cidrs)==2
    error_message = "Please provide 2 valid subnet CIDR"
  }
  
}

variable "db_subnet_group_tags" {
  type = map
  default = {}
}

variable "database_subnet_cidrs_tags" {
  type = map
  default = {}
}

variable "nat_gateway_tags" {
  type = map
  default = {}
}

variable "public_RT_tags" {
  type = map
  default = {}
}

variable "private_RT_tags" {
  type = map
  default = {}
}

variable "database_RT_tags" {
  type = map
  default = {}
}

variable "is_peering_required" {
  type = bool
  default = false
}

variable "acceptor_vpc_id" {
  type = string
  default = ""
}

variable "vpc_peering_tags" {
  type = map
  default = {}
}

