resource "null_resource" "schema" {
  provisioner "local-exec" {
    command = <<EOF
        cd /tmp
        curl -s -L -o /tmp/mongodb.zip "https://github.com/roboshop-devops-project/mongodb/archive/main.zip"
        unzip -o mongodb.zip
        cd mongodb-main
        mongo --ssl --sslCAFile /home/centos/rds-combined-ca-bundle.pem --host ${aws_docdb_cluster.docdb.endpoint}  --username local.USERNAME --password local.PASSWORD < catalogue.js
        mongo --ssl --sslCAFile /home/centos/rds-combined-ca-bundle.pem --host ${aws_docdb_cluster.docdb.endpoint}  --username local.USERNAME --password local.PASSWORD  < users.js
        EOF
      }
    }