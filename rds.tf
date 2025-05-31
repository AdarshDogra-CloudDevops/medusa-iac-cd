resource "aws_db_subnet_group" "medusa_db_subnet_group" {
  name       = "medusa-db-subnet-group"
  subnet_ids = data.aws_subnets.default.ids
  tags = {
    Name = "Medusa DB Subnet Group"
  }
}

resource "aws_db_instance" "medusa_postgres" {
  identifier              = "medusadb"
  allocated_storage       = 20
  engine                  = "postgres"
  engine_version          = "13"
  instance_class          = "db.t3.micro"
  username                = "medusa"
  password                = "medusapassword123"
  db_name                 = "medusadb"
  skip_final_snapshot     = true
  publicly_accessible     = true
  vpc_security_group_ids  = [aws_security_group.ecs_sg.id]
  db_subnet_group_name    = aws_db_subnet_group.medusa_db_subnet_group.name
}

