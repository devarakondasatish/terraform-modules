resource "aws_subnet" "public-subnet" {
vpc_id=var.vpc-id
cidr_block=var.public-subnetblock
tags={
Name=var.publicsubnetname
}
}

resource "aws_subnet" "private-subnet" {
vpc_id=var.vpc-id
cidr_block=var.private-subnetblock
tags={
Name=var.privatesubnetname
}
}

