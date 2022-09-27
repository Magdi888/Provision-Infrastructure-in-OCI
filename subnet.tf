resource "oci_core_subnet" "public_subnet" {
    #Required
    cidr_block = var.public_subnet_cidr
    compartment_id = var.compartment_id
    vcn_id = oci_core_vcn.my_vcn.id

    display_name = "public_subnet"
    dns_label = "subnet1"
    route_table_id = oci_core_route_table.public_route_table.id
    security_list_ids = [oci_core_security_list.public-security-list.id]
}

resource "oci_core_subnet" "private_subnet" {
    #Required
    cidr_block = var.private_subnet_cidr
    compartment_id = var.compartment_id
    vcn_id = oci_core_vcn.my_vcn.id

    display_name = "private_subnet"
    dns_label = "subnet2"
    route_table_id = oci_core_route_table.private_route_table.id
    security_list_ids = [oci_core_security_list.private-security-list.id]
}