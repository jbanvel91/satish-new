variable "vpc_cidr" {
  type = string
  default = "15.0.0.0/16"
}

variable "region" {
  type    = string
  default = "ap-south-1"
}
variable "ami" {
  type = map
  default = {
    ap-south-1 = "ami-059af0b76ba105e7e"
  }
}
variable "web_ins_type" {
  default = "t2.micro"
}
variable "web_tags" {
  type = map
  default={
    Name = "webserver"
  }
}
variable "web_server_no" {
   default = "1"
}




