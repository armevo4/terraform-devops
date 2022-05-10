resource "aws_vpc" "myvpc" {
  cidr_block = var.myvpc

  tags = {
    Name = "myvpcfrankfurt"
    Devop = "true"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.myvpc.id


  tags = {
    Name = "Myitg"
  }
}