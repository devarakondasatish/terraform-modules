resource "aws_internet_gateway" "ig" {
vpc_id=var.vpc-id
tags={
name=var.igw-name
}
}
