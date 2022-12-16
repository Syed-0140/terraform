provider "aws" {
  access_key = "AKIA2W3RP4ZMVKPQMOGX"
  secret_key = "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"
  region = "us-east-1"
}
resource "aws_instance" "one" {
  count =2
  ami           = "ami-0b0dcb5067f052a63"
  instance_type = "t2.micro"
  
  tags = {
    Name = "projectinstance"
  }
}
resource "aws_s3_bucket" "two" {
  bucket = "syed"
}
resource "aws_ebs_volume" "three" {
  availability_zone = "us-east-1a"
  size              = 40
  tags = {
    Name = "HelloWorld"
  }
}
