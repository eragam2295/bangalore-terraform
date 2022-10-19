resource "aws_instance" "ter_instance1" {
  ami           = "ami-0c6a6b0e75b2b6ce7"
   instance_type = "t2.micro"
   subnet_id = aws_subnet.terrsubnet.id
   key_name = "lol"
   vpc_security_group_ids = [aws_security_group.terr-security.id]
   associate_public_ip_address= "true"
count = "2"
  tags = {
    Name = "node1"
    name = "node2"
  }
}
