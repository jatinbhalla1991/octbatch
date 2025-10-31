provider "aws" {
    region = "us-west-2"
}

resource "aws_instance" "demo" {
    ami           = "ami-06d455b8b50b0de4d" # Amazon Linux 2 AMI
    instance_type = "t2.micro"
    security_groups = [aws_security_group.sg1.name]
}

resource "aws_security_group" "sg" {
    name        = "sg_demo"
    description = "Allow SSH and HTTP inbound traffic"

    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
}
}


resource "aws_security_group" "sg1" {
    name        = "sg2_demo"
    description = "Allow SSH and HTTP inbound traffic"

    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
}
}