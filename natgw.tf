resource "aws_nat_gateway" "natgw" {
  allocation_id = aws_eip.my_eip.id
  connectivity_type = "public"
  subnet_id         = aws_subnet.my_submet.id
  tags = {
    Name = "Mynat"
  }
}
resource "aws_eip" "my_eip" {
   tags = {
    Name = "Myip"
  }
}