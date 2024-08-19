resource "aws_instance" "ec2-instance" {
  ami           = var.ami
  instance_type = var.instance-type
  subnet_id=var.publicsubnet-ec2
  tags = {
    name = var.instance-name
  }
}
