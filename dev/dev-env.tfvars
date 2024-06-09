# Environment
environment = "dev"

# development environment configuration
region            = "us-east-1"
ami               = "ami-06a0cd9728546d178"
subnet_id         = "subnet-3b2cb85e"
default_sg        = "sg-cc499db0"
instance_type     = "t2.micro"
instance_keypair  = "ethans-devops-us-east-1-key"

# RDS configuration details
db_username = "dev_admin"
db_password = "dev_admin123#"
db_name     = "dev_devopsdb"

