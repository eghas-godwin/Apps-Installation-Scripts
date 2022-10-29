resource "aws_instance" "web" {
  ami = data.aws_ami.amazon-ec2.id
  instance_type = var.instance_type
  key_name = var.key_name
  security_groups = [module.sg.sg_name]
  user_data = file("./web/server_script.sh")

  tags = {
    "Name" = "Web Server"
  }
}

module "eip" {
    source = "../eip"
    instance_id = aws_instance.web.id
}

module "sg" {
  source  = "../sg"
}

