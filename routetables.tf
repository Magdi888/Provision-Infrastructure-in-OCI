resource "oci_core_route_table" "public_route_table" {
    #Required
    compartment_id = "ocid1.compartment.oc1..aaaaaaaart5bstxzdyqoesogpdtzjtambvfn2qsucx4555pgitble2ybx2fq"
    vcn_id = oci_core_vcn.my_vcn.id

    #Optional
    display_name = "public_route"
    route_rules {
        #Required
        network_entity_id = oci_core_internet_gateway.internet_gateway.id

        #Optional
        cidr_block = "0.0.0.0/0"
        description = "internet"
    }
}

resource "oci_core_route_table" "private_route_table" {
    #Required
    compartment_id = "ocid1.compartment.oc1..aaaaaaaart5bstxzdyqoesogpdtzjtambvfn2qsucx4555pgitble2ybx2fq"
    vcn_id = oci_core_vcn.my_vcn.id

    #Optional
    display_name = "private_route"
    route_rules {
        #Required
        network_entity_id = oci_core_nat_gateway.nat_gateway.id

        #Optional
        cidr_block = "0.0.0.0/0"
        description = "internet"
    }
}