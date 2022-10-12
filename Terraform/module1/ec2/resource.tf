resource "aws_instance" "dev" {
  ami = data.aws_ami.amazon-ec2.id
  associate_public_ip_address = true
  instance_type = var.instance_type_list["0"]
  key_name = var.key_name
  vpc_security_group_ids = [aws_security_group.custom_ports.name]

  tags = {
    "Name" = "dev"
  }
}
