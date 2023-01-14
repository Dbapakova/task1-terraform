resource "aws_instance" "myinstance" {
  ami           = "ami-0b5eea76982371e91"
  instance_type = "t2.micro"

  key_name = "bastion-key2"

  # List - []
  security_groups = ["ssh-sg", "http-sg"]

  # Map - {}
  root_block_device {
    volume_size = 20
  }

  tags = {
    Name = "myinstance"
  }
}
