variable "key_name" {
  type        = string
  default     = "bastion-key"
  description = "Key Pair Name"
}

variable "ssh_port" {
  type        = number
  default     = 22
  description = "SSH Port"
}

variable "http_port" {
  type        = number
  default     = 80
  description = "SSH Port"
}

variable "instance_size" {
  type        = string
  default     = "t2.micro"
  description = "EC2 Instance Type"
}

variable "ami_name" {
  type        = string
  default     = "ami-0b5eea76982371e91"
  description = "EC2 AMI Name"
}

# List("String", "String") - [ ]
variable "ingress_cidr" {
  type        = list(any)
  default     = ["0.0.0.0/0"]
  description = "Ingress SG CIDR"
}

# Map (Key - Value) - { }
variable "instance_tags" {
  type = map(any)
  default = {
    owner = "DevOps"
    tool  = "Terraform"
  }
  description = "EC2 Instance Tags"
}




