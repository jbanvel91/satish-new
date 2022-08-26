variable "vpc_cidr" {
  type = string
  default = "15.0.0.0/16"
}

variable "region" {
  type    = string
  default = "ap-southeast-1"
}
variable "ami" {
  type = map
  default = {
    ap-southeast-1 = "ami-0012a981fe3b8891f"
  }
}
variable "web_ins_type" {
  default = "t2.micro"
}



