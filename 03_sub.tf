# 가용영역의 a의 Public Subnet
resource "aws_subnet" "sje_puba" {
  vpc_id            = aws_vpc.sje_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "ap-northeast-2a"
  
  tags = {
    Name = "sje-puba"
  }
}

# 가용영역 a의 Private Subnet
resource "aws_subnet" "sje_pria" {
  vpc_id            = aws_vpc.sje_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-northeast-2a"
  
  tags = {
    Name = "sje-pria"
  }
}

#가용영역 c의 Public Subnet
resource "aws_subnet" "sje_pubc" {
  vpc_id            = aws_vpc.sje_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-northeast-2c"
  
  tags = {
    Name = "sje-pubc"
  }
}

# 가용영역 c의 Private Subnet
resource "aws_subnet" "sje_pric" {
  vpc_id            = aws_vpc.sje_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    Name = "sje-pric"
  }
}