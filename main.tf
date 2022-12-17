provider "aws" {
  access_key = ""
  secret_key = ""
  region = "us-east-1"
}
resource "aws_instance" "one" {
  ami           = "ami-064bd2d44a1d6c097"
  instance_type = "c5a.4xlarge"
  availability_zone = "us-east-1b"
  
  tags = {
    Name = "terrainstance"
  }
}
resource "aws_s3_bucket" "two" {
  bucket = "syed004"
}
resource "aws_ebs_volume" "three" {
  availability_zone = "us-east-1b"
  size              = 20
  tags = {
    Name = "HelloWorld"
  }
}

