data "aws_availability_zones" "azs" {
   
}

data "aws_vpc" "default" {
  default = true

}

data "aws_route_table" "route" {
     vpc_id = data.aws_vpc.default.id
     filter {
       name   = "association.main"
       values = ["true"]
     }
}