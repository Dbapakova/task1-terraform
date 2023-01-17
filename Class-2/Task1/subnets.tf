resource "aws_subnet" "public_subnets" {
  count                   = length(var.subnets_cidr)
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = element(var.subnets_cidr, count.index)
  map_public_ip_on_launch = "true"
  availability_zone       = element(var.azs, count.index)

}
