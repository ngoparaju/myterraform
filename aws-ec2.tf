provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAVH6QNN44ED45RTGX"
  secret_key = "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"
}
resource "aws_instance" "myec2" {
  ami           = "ami-0889a44b331db0194"
  instance_type = "t2.micro"

  tags = {
    Name = "myfirst"
  }
}
