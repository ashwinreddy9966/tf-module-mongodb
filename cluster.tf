resource "aws_docdb_cluster" "docdb" {
  cluster_identifier      = "roboshop-${var.ENV}"
  engine                  = "docdb"
  master_username         = "admin1"
  master_password         = "roboshop1"
  skip_final_snapshot     = true
  db_subnet_group_name    =
}

resource "aws_docdb_subnet_group" "docdb" {
  name       = "roboshop-${var.ENV}"
  subnet_ids = [aws_subnet.private.*.id]

  tags = {
    Name = "My docdb subnet group"
  }
}