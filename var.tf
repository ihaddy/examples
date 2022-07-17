variable "aws_region" {
  type    = string
  default = "us-east-1"

}
variable "ami" {
  type = map(any)
  default = {
    "us-east-1" : "ami-0f65ab0fd913bc7be"
  }

}