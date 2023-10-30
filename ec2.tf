
resource "aws_instance" "ec2-one" {
  ami                    = "ami-01eccbf80522b562b"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.ec2.id]
  #key_name               = aws_key_pair.ec2_key.key_name
  subnet_id = aws_subnet.private_subnet1.id
  user_data              = file("userdata.sh")

  tags = {
    Name = "webserver-1"
  } 

}

resource "aws_instance" "ec2-two" {
  ami                    = "ami-01eccbf80522b562b"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.ec2.id]
  #key_name               = aws_key_pair.ec2_key.key_name
  subnet_id = aws_subnet.private_subnet2.id
  user_data              = file("userdata.sh")

  tags = {
    Name = "webserver-2"
  } 

}