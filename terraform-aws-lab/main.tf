resource "aws_security_group" "ssh" {
  name = "terraform-ssh"

  ingress = {
    from_port   = 22
    to_port     = 22
    protocol    ="tcp"
    cidr_blocks = ["0.0.0.0/0"] #lab only
  }

  egress = {
    from_port   = 0
    to_port     = 0
    protocol    ="-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws" "lab" {
    ami = "ami-0c02fb55956c7d316"
    instance_type = "t2.micro"

    key_name = "terraform-lab-key"

    vpc_security_group_ids = [aws_security_group.ssh.id]

    associate_public_ip_address = true

    tags = {
        Name = "terraform-lab" 
    }
}