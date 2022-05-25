resource "aws_route53_record" "record" {
  zone_id = data.terraform_remote_state.vpc.outputs.HOSTEDZONE_PRIVATE_ID
  name    = "mongodb-${ENV}.${data.terraform_remote_state.outputs.HOSTEDZONE_PRIVATE_ZONE}"
  type    = "CNAME"
  ttl     = "60"
  records = [aws_docdb_cluster.docdb.endpoint]
}