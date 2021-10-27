resource "aws_vpc" "sje_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
      Name   = "sje-vpc"    
  }
}