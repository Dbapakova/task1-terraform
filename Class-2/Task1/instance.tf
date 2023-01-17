resource "aws_instance" "webservers" {
  count         = length(var.subnets_cidr)
  ami           = var.webservers_ami
  instance_type = var.instance_type
  key_name      = "bastion-key"

  subnet_id                   = element(aws_subnet.public_subnets.*.id, count.index)
  security_groups             = ["${aws_security_group.web-sg.id}"]
  associate_public_ip_address = true

  user_data = file("install_httpd.sh")

  tags = {
    Name = "Server-${count.index}"
  }
}
