provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "bastion-key" {
  key_name   = "bastion-key"
  public_key = file("~/.ssh/id_rsa.pub")
}
