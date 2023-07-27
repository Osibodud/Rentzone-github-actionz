# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "terraform-remote-daniel"
    key            = "rentzone-app/terraform.tfstate"
    region         = "us-east-1" 
    dynamodb_table = "Terraform-state-lock"
  }
}
