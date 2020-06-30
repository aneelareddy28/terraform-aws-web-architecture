output "S3_bucketname" {
  value = module.storage.terraformbucket
}

output "dynamodb_table" {
  value = module.storage.terraform-dynamodb
}


output "publicsubnet" {
  value = module.network.public_Subnet 
}

output "privatesubnets" {
  value = module.network.private_subnet
}

output "vpc-id" {
  value = module.network.vpc-id
}

output "natgateway-publicip" {
  value = module.network.nat-gw
}
output "internetgateway-id" {
  value = module.network.igw-id
}
