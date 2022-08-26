locals {
  en_tag={
      Environment = "${terraform.workspace}"
  }
#to merge
    web_tags = "${merge(var.web_tags, local.en_tag)}"
}
resource "aws_instance" "web" {
	count         = "${var.web_server_no}"
    ami           = "${var.ami[var.region]}"
    instance_type = "${var.web_ins_type}"
    subnet_id     = "${aws_subnet.asg_pb_sn.*.id[count.index]}"
    vpc_security_group_ids = ["${aws_security_group.web_sg.id}"]
    key_name = "Banuvel-mumbai-new"
    tags = "${local.web_tags}"
}
