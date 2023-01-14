resource "aws_instance" "myinstance1" {
  ami           = var.ami_name
  instance_type = var.instance_size

  key_name = var.key_name

  # List - []
  security_groups = ["ssh-sg", "http-sg"]

  # Map - {}
  root_block_device {
    volume_size = 20
  }

  tags = var.instance_tags
}

resource "aws_instance" "myinstance2" {
  ami           = var.ami_name
  instance_type = var.instance_size

  key_name = var.key_name

  # List - []
  security_groups = ["ssh-sg", "http-sg"]

  # Map - {}
  root_block_device {
    volume_size = 20
  }

  tags = var.instance_tags
}
