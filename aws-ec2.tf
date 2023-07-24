terraform {
 required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "~> 4.16"
}
}
        required_version = ">= 1.2.0"
}
provider "aws" {
region = "us-east-1"
}
resource "aws_instance" "aws_ec2_demo" {
   count = 2
   ami = "ami-05548f9cecf47b442" 
   instance_type = "t2.micro"
   tags = {
     Name = "terraform_demo"
}
}
