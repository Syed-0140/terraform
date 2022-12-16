provider "aws" {
  access_key = "AKIA2W3RP4ZMTO4PZLO4"
  secret_key = "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"
  region = "ap-south-1"
}
resource "aws_instance" "one" {
  count =2
  ami           = "ami-07ffb2f4d65357b42"
  instance_type = "t2.micro"
  
  tags = {
    Name = "projectinstance"
  }
}
resource "aws_s3_bucket" "two" {
  bucket = "syed004"
}
resource "aws_ebs_volume" "three" {
  availability_zone = "us-east-1a"
  size              = 40
  tags = {
    Name = "HelloWorld"
  }
}

