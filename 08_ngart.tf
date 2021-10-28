resource "aws_route_table" "sje_ngart_a" {
  vpc_id =  aws_vpc.sje_vpc.id
  
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.sje_nga_a.id
  }
  tags  = {
    Name  = "sje-nga-rta"
  }
} 

resource "aws_route_table" "sje_ngart_c" {
  vpc_id =  aws_vpc.sje_vpc.id
  
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.sje_nga_c.id
  }
  tags  = {
    Name  = "sje-nga-rtc"
  }
} 