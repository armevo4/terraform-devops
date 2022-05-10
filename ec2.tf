resource "aws_instance" "web" {
  ami           = "ami-09439f09c55136ecf"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.my_submet.id
  vpc_security_group_ids = [aws_security_group.mysg.id]
  key_name = aws_key_pair.public_key.key_name


  connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("iac_rsa")
    host     = self.public_ip
  }
  provisioner "file" {
    source      = "iac_rsa"
    destination = "/home/ec2-user/iac_rsa"
  }
  tags = {
    Name = "HelloWorld"
  }
}


resource "aws_instance" "private" {
  ami           = "ami-09439f09c55136ecf"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.my_submet_private.id
  vpc_security_group_ids = [aws_security_group.mysg.id]
  key_name = aws_key_pair.public_key.key_name

  tags = {
    Name = "private"
  }
}
  


