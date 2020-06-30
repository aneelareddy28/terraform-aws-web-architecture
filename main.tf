#-----------Provider AWS --------------------
provider "aws" {
  region                  = var.aws_region
  shared_credentials_file = "~/.aws/credentials"
  #assume_role {
   # role_arn                = "arn:aws:iam::${var.role_acc}:role/aws-jenkins"
  #}
  profile                 = var.env
  version                 = "~> 2.0"
}

#####################################################
#----Terraforom backend s3----------------------------
/*
terraform {
  backend "s3" {
      shared_credentials_file = "~/.aws/credentials"
      profile                 = "dev"
      bucket                  = "aws-secure-web-app-state"
      key                     = "dev/backup-state/terraform.tfstate"
      region                  = "us-west-2"
      dynamodb_table          = "aws-secure-web-app-state"
      encrypt                 = true
  }
}
*/

####################################################
#---------module storage for s3, dynamodb------------------------

module "storage" {
  source = "./storage"
}
###################################################

#--------mdouel networking for vpc,subnets,routes,IG,nat-GW------------
  
module "network" {
    source = "./networking"
    cidrblock = var.cidrblock
    accessIp = var.accessIp
    cidr_public = var.cidr_public
    cidr_private = var.cidr_private
}
#######################################################
