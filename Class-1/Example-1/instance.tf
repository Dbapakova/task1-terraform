resource "aws_instance" "myinstance" {
  ami           = "ami-0b5eea76982371e91"
  instance_type = "t2.micro"

  key_name        = "bastion-key"
  security_groups = ["allow_ssh"]

  tags = {
    Name = "myinstance"
  }
}
