locals {
  DNS_NAME = "mongodb-${var.ENV}.${data.terraform_remote_state.vpc.outputs.HOSTEDZONE_PRIVATE_ZONE}"
  USERNAME =
  PASSWORD =
}