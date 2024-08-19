resource "aws_eip" "eip" {
vpc=true
}

resource "aws_nat_gateway" "nat" {
allocation_id=aws_eip.eip.id
subnet_id=var.publicsubnet-nat
tags={
name=var.natname
}
}

