##################################################################################
# IMPORTS
##################################################################################

import {
  to = module.main.aws_vpc.this[0]
  id = "vpc-0a8b4ce0df0cda0f1" #VPC
}

import {
  to = module.main.aws_subnet.public[0]
  id = "subnet-0f67734d6da807dc4" #PublicSubnet1
}

import {
  to = module.main.aws_subnet.public[1]
  id = "subnet-0244edffd826ff24e" #PublicSubnet2
}

import {
  to = module.main.aws_internet_gateway.this[0]
  id = "igw-0953b7d997a59773e" #InternetGateway
}

import {
  to = module.main.aws_route.public_internet_gateway[0]
  id = "rtb-07416df4efa490116_0.0.0.0/0" #DefaultPublicRoute
}

import {
  to = module.main.aws_route_table.public[0]
  id = "rtb-07416df4efa490116" #PublicRouteTable
}

import {
  to = module.main.aws_route_table_association.public[0]
  id = "subnet-0f67734d6da807dc4/rtb-07416df4efa490116" #PublicSubnet1/PublicRouteTable
}

import {
  to = module.main.aws_route_table_association.public[1]
  id = "subnet-0244edffd826ff24e/rtb-07416df4efa490116" #PublicSubnet2/PublicRouteTable
}
