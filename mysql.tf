provider "aws" {
  region = "ap-south-1"
}

resource "aws_db_instance" "anurag_rds" {
  identifier            = "example-rds"
  allocated_storage     = 20
  storage_type          = "gp2"
  engine                = "mysql"
  engine_version        = "5.7"
  instance_class        = "db.t2.micro"
  username              = "admin"
  password              = "anuragkt3"
  publicly_accessible   = false
  multi_az              = false
  skip_final_snapshot   = true
  backup_retention_period = 7

  tags = {
    Name = "example-rds"
  }
}
