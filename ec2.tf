resource "aws_instance" "ter_instance1" {
  ami           = "ami-0c6a6b0e75b2b6ce7"
   instance_type = "t2.micro"
   key_name = "lol"
   associate_public_ip_address= "true"
count = "2"
  tags = {
    Name = "node1"
    name = "node2"
  }
}
