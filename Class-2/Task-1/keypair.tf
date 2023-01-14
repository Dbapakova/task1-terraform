resource "aws_key_pair" "bastion-key2" {
  key_name   = "bastion-key2"
  public_key = file("~/.ssh/id_rsa.pub")
}