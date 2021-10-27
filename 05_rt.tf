resource "aws_route_table" "sje_rt" {
  vpc_id = aws_vpc.sje_vpc.id

  route {
  #  carrier_gateway_id = "value"
    cidr_block = "0.0.0.0/0"
  #  destination_prefix_list_id = "value"
  #  egress_only_gateway_id = "value"
    gateway_id = aws_internet_gateway.sje_ig.id
  #  instance_id = "value"
  #  ipv6_cidr_block = "value"
  #  local_gateway_id = "value"
  #  nat_gateway_id = "value"
  #  network_interface_id = "value"
  #  transit_gateway_id = "value"
  #  vpc_endpoint_id = "value"
  #  vpc_peering_connection_id = "value"
  } 
  tags = {
    Name = "sje-rt"
  }
}
