variable "cidr_block" {
    type = string
    default = "10.0.0.0/16"
  
}

variable "enable_dns_hostnames" {
    type = bool
    default = true
  
}

variable "common_tags" {

 type = map
  default =  {} # its optional

  
}

variable "vpc_tags" {
    type = map 
    default = {}
  
}
variable "project_name" {
    type = string 
}
variable "environment" {
    type = string
}
variable "igw_tags" {
  
  type = map 
  default = {}
  
}
variable "public_subnets_cidr" {
  
  type =list 
  validation {
    condition = length(var.public_subnets_cidr) == 2
    error_message = "Public subnet CIDR must be provided in a list of two"
  }
}
variable "public_subnets_tags" {
    default = {}
}
variable "private_subnets_cidr" {
  type = list 
   validation {
     condition = length(var.private_subnets_cidr) == 2
     error_message = "Public subnet CIDR must be provided in a list of two"
   }
}

variable "private_subnets_tags" {
   default = {}
}
variable "database_subnets_cidr" {
  type = list 
  validation {
    condition = length(var.database_subnets_cidr) ==2 
    error_message = "Public subnet CIDR must be provided in a list of two"
  }
}

variable "database_subnets_tags" {
   default = {}
}

variable "roboshop_nat_gateway_tags" {
  default = {}
}
variable "public_route_tables_tags" {
  default = {}
}
variable "private_route_tables_tags" {
  default = {}
}
variable "database_route_tables_tags" {
  default = {}
}
variable "eip_tags" {
  default = {}
}
variable "acceptor_vpc_id" {
  type = string
  default = "" 
}
variable "acceptor_vpc_required" {
  type = bool 
  default = false
}
variable "perring_tags" {
  default = {}
}