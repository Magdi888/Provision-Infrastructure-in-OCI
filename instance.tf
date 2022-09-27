resource "oci_core_instance" "ubuntu_instance" {
    # Required
    availability_domain = var.availability_domain
    compartment_id = var.compartment_id
    shape = var.instance_shape
    source_details {
        source_id = var.instance_image
        source_type = "image"
    }

    # Optional
    display_name = "public-vm"
    create_vnic_details {
        assign_public_ip = true
        subnet_id = oci_core_subnet.public_subnet.id
    }
    metadata = {
        ssh_authorized_keys = file("/home/ahmed/.oci/oci_api_key_public.pem")
    } 
    preserve_boot_volume = false
}