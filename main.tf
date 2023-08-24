provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web" {

  ami           = "ami-0da59f1af71ea4ad2"
  instance_type = "t2.micro"

  subnet_id     = "subnet-07c83fc3bd10d7f51"

  availability_zone = "ap-south-1a"

  tags = {
    Name = "HelloWorld"
  }
}
