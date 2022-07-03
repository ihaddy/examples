terraform {
  backend "s3"{
    bucket = "terraform-backend-ihaws"
    key = "terraform/example-project"
    region = "us-east-1"
  }
}