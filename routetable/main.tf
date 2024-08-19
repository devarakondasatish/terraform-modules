resource "aws_route_table" "pub-rt" {
vpc_id=var.vpc-id
route {
cidr_block=var.pub-rtblock
gateway_id=var.ig-id
}
}

resource "aws_route_table" "pvt-rt" {
vpc_id=var.vpc-id
route {
cidr_block=var.pvt-rtblock
gateway_id=var.nat-id
}
}

resource "aws_route_table_association" "pubrt-assc" {
subnet_id=var.publicsubnet-route
route_table_id=aws_route_table.pub-rt.id
}

resource "aws_route_table_association" "pvtrt-assc" {
subnet_id=var.privatesubnet-route
route_table_id=aws_route_table.pvt-rt.id
}
