resource "oci_core_vcn" "my_vcn" {
    #Required
    compartment_id = var.compartment_id
    cidr_block = var.vnc_cidr
    display_name = "my_vnc"
    dns_label = "vcn1"
    
}