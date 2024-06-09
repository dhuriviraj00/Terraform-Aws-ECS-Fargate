variable "ami" {
  type = string
  
}

variable "region"{
    type= string
    
}

variable "environment"{
    type= string
    default = ""
}

variable "instance_type"{
    type= string
  
}

variable "instance_keypair" {
  type = string
 
}
variable "subnet_id"{
    type= string
  
}

variable "default_sg" {
  type = string
 
}

variable "db_name" {
  type = string
  default = ""
}

variable "db_username" {
  type = string
  default = ""
}

variable "db_password" {
  type = string
  default = ""
}

variable "aws_access_key_id" {
  type = string
}

variable "aws_secret_access_key" {
  type = string
}