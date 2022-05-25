locals {
  DNS_NAME = 
  USERNAME = jsondecode(data.aws_secretsmanager_secret_version.secrets.secret_string)["DOCUMENTDB_MASTER_USERNAME"]
  PASSWORD = jsondecode(data.aws_secretsmanager_secret_version.secrets.secret_string)["DOCUMENTDB_MASTER_PASSWORD"]
}