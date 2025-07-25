resource "aws_instance" "raj" {
  instance_type = "t2.micro"
  ami           = "ami-020cba7c55df1f615"
  key_name       = "mahakey"
 
  tags = {
    Name = "myinstance"
  }
}
