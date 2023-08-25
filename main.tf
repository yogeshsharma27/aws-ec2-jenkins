terraform {
 required_providers {
  aws = {
   source = "hashicorp/aws"
   version= "5.11.0"
}
 } 
}

provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "web" {

  ami           = "ami-0453898e98046c639"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
