resource "aws_route_table_association" "sje_rtas_a" {
  subnet_id = aws_subnet.sje_puba.id
  route_table_id = aws_route_table.sje_rt.id
}

resource "aws_route_table_association" "sje_rtas_c" {
  subnet_id = aws_subnet.sje_pubc.id
  route_table_id = aws_route_table.sje_rt.id
}