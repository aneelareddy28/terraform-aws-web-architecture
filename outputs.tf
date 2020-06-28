output "S3_bucketname" {
  value = module.storage.terraformbucket
}

output "dynamodb_table" {
  value = module.storage.terraform-dynamodb
}



