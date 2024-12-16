provider "aws" {
region = "us-east-1"
access_key = "aws_access_key"
secret_key = "aws_secret_key"
}

resource "aws_instance" "key" {
ami = ""
instance_type = "t2.micro"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project_instance"
}
}
