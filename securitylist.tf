resource "oci_core_security_list" "public-security-list"{

# Required
  compartment_id = var.compartment_id
  vcn_id = oci_core_vcn.my_vcn.id

# Optional
  display_name = "security-list-for-public-subnet"

   egress_security_rules {
      stateless = false
      destination = "0.0.0.0/0"
      destination_type = "CIDR_BLOCK"
      protocol = "all" 
  }

  ingress_security_rules { 
      stateless = false
      source = "0.0.0.0/0"
      source_type = "CIDR_BLOCK"
      protocol = "6"
      tcp_options { 
          min = 22
          max = 22
      }
    }
}

resource "oci_core_security_list" "private-security-list"{

# Required
  compartment_id = var.compartment_id
  vcn_id = oci_core_vcn.my_vcn.id

# Optional
  display_name = "security-list-for-private-subnet"

   egress_security_rules {
      stateless = false
      destination = "0.0.0.0/0"
      destination_type = "CIDR_BLOCK"
      protocol = "all" 
  }

  ingress_security_rules { 
      stateless = false
      source = "10.0.0.0/16"
      source_type = "CIDR_BLOCK"
      protocol = "6"
      tcp_options { 
          min = 22
          max = 22
      }
    }
}

