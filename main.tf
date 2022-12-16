provider "aws" {
  access_key = "AKIA2W3RP4ZMTO4PZLO4"
  secret_key = "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"
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
  availability_zone = "us-east-1a"
  size              = 20
  tags = {
    Name = "HelloWorld"
  }
}

