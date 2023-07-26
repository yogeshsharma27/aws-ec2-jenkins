provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami = "ami-022e1a32d3f742bd8"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
