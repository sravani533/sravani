provider "aws" {
region = "us-east-1"
access_key = "AWS_ACCESS_KEY"
secret_key = "AWS_SECRET_KEY"
}

resource "aws_instance" "key" {
ami = "ami-0166fe664262f664c"
key_name = "sr"
instance_type = "t2.micro"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project_instance"
}
}
