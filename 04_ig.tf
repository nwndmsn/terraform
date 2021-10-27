resource "aws_internet_gateway" "sje_ig" {
  vpc_id = aws_vpc.sje_vpc.id

  tags = {
    Name = "sje-ig"
  }
}