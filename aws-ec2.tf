provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAVH6QNN44JEGO2QMO"
  secret_key = "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"
}
resource "aws_instance" "myec2" {
  ami           = "ami-0889a44b331db0194"
  instance_type = "t2.micro"

  tags = {
    Name = "myfirst"
  }
}
