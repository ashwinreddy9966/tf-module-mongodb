resource "aws_route53_record" "record" {
  zone_id = data.terraform_remote_state.vpc.outputs.HOSTEDZONE_PRIVATE_ID
  name    = "roboshop-docdb-dev.cluster-ciqb6xvrbz0q.us-east-1.docdb.amazonaws.com"
  type    = "CNAME"
  ttl     = "300"
  records = [aws_eip.lb.public_ip]
}