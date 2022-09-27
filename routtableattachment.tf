resource "oci_core_route_table_attachment" "public_route_table_attachment" {
  #Required    
  subnet_id = oci_core_subnet.public_subnet.id
  route_table_id =oci_core_route_table.public_route_table.id
}

resource "oci_core_route_table_attachment" "private_route_table_attachment" {
  #Required    
  subnet_id = oci_core_subnet.private_subnet.id
  route_table_id =oci_core_route_table.private_route_table.id
}