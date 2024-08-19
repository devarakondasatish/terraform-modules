output "pub-sub" {
value=aws_subnet.public-subnet.id
}
output "pvt-sub" {
value=aws_subnet.private-subnet.id
}
