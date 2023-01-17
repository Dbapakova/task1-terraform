provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "VPC_Task"
      Environment = "Test"
      Team        = "DevOps"
      Created_by  = "Dinara_Bapakova"
    }
  }
}