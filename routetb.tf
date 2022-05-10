resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  route {
    cidr_block = "8.8.8.8/32"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = {
    Name = "MyrouteTB"
  }
}
resource "aws_route_table" "priviteRT" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.natgw.id
  }
    tags = {
    Name = "MyPriviteTB"
  }
}