
# Terraform S3 remote backend

terraform {
  backend "s3" {
    bucket = "tf-devops-conf-management123"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "tf-devops-conf-management123"
  }
}

# module for PHP application instance creation
module "demo-app" {

  source = "../modules/ec2"
  depends_on = [
      module.app_db
  ]
  ami              = var.ami
  environment      = var.environment
  instance_keypair = var.instance_keypair
  instance_type    = var.instance_type
  subnet_id        = var.subnet_id
  default_sg       = var.default_sg
 
}

# module for PHP DB instance creation
module "app_db" {

  source = "../modules/RDS"
  db_name     = var.db_name
  db_username = var.db_username
  db_password = var.db_password
  default_sg  = var.default_sg

}
