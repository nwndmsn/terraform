resource "aws_route_table_association" "sje_ngartas_a" {
  subnet_id      = aws_subnet.sje_pria.id
  route_table_id = aws_route_table.sje_ngart_a.id
}

resource "aws_route_table_association" "sje_ngartas_c" {
  subnet_id      = aws_subnet.sje_pric.id
  route_table_id = aws_route_table.sje_ngart_c.id
}