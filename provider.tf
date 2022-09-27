
provider "oci" {
  tenancy_ocid = "ocid1.tenancy.oc1..aaaaaaaaxacmyeofnrv4ggsq7f7fvfevtafvaops3mwo27phx5p7zbrtqqwq"
  user_ocid = "ocid1.user.oc1..aaaaaaaatspatttwfah6myi457n3bod23eja272wqjl74je6f3ekeypg3gkq"
  fingerprint = "3e:c6:46:fd:23:5a:35:a0:e0:10:89:80:5f:c4:58:5d"
  private_key_path = "/home/ahmed/.oci/oci_api_key.pem"
  private_key = file("/home/ahmed/.oci/oci_api_key.pem")
  region = var.region
}