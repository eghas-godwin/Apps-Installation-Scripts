resource "aws_instance" "db" {
  ami = data.aws_ami.amazon-ec2.id
  instance_type = var.instance_type


  tags = {
    "Name" = "DB Server"
  }
}
