#BLOCK TO CREATE KEY_PAIR
resource "aws_key_pair" "my_key_pair" {
  key_name   = "terra-key"
  public_key = file("H:\\DEVOPS\\Terraform\\ec2\\keys\\terra-key.pub")
}


#BLOCK TO CREATE DEFAULT_VPC
resource "aws_default_vpc" "default" {
  
}

#BLOCK TO CREATE SECURITY_GROUP
resource "aws_security_group" "my_security_group" {
  name= "my_security_group"
  vpc_id = aws_default_vpc.default.id
  description = "to allow inbound and outbound traffic"
  ingress {
       description = "to allow incoming traffic"
       from_port = 22
       to_port = 22
       protocol = "tcp"
       cidr_blocks = [ "0.0.0.0/0" ]
  }



  egress {
       description = "to allow outgoing traffic"
       from_port = 0
       to_port = 0
       protocol = "-1"
       cidr_blocks = [ "0.0.0.0/0" ]
 }
  
}
#BLOCK TO CREATE EC2_INSTANCE
resource "aws_instance" "my_demo_instance" {
  # count = 3 (this is called as meta arguments it will create 3 instances of same type)
  # for each (this is called as meta arguments it will create instance of other type)
  # for_each = toset(["prod , depl ,staging"])
    ami = "ami-0862be96e41dcbf74"


    instance_type = "t2.micro"
    key_name = aws_key_pair.my_key_pair.key_name
    security_groups = [aws_security_group.my_security_group.name]

    tags = {
      Name = "lonewolf_terra_creation"
      tags = "lonewolf_terra_creation"
    }
  
}
