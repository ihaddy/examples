variable "ENV" {

}

variable "instance_type" {
  default = "t2.micro"
}

variable "public_subnets" {
  # type = list(string)
  type = list(string)
}

variable "vpc_id" {

}

variable "path_to_public_key" {
  default = "mykey.pub"

}