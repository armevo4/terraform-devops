resource "aws_subnet" "my_submet" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.mupubsub
  map_public_ip_on_launch = "true"
  
  tags = {
    Name = "MyPublicSubnet"
  }
}
 resource "aws_subnet" "my_submet_private" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.myprivesub
  
  tags = {
    Name = "MyPrivateSubnet"
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.my_submet.id
  route_table_id = aws_route_table.rt.id
}

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.my_submet_private.id
  route_table_id = aws_route_table.priviteRT.id
}