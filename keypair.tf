resource "aws_key_pair" "public_key" {
  key_name   = "iac_rsa_pub"
  public_key = file("iac_rsa.pub")
}  


