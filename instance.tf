provider "aws" {
  shared_credentials_files = ["~/.aws/credentials"]
  region                   = var.aws_region
  profile                  = "terraform"

}

resource "aws_instance" "name" {
  ami           = var.ami[var.aws_region]
  instance_type = "t2.micro"
}