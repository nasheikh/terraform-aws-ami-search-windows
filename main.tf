# get amis data from aws
data "aws_ami" "search" {
  most_recent = true
  owners      = ["self", "amazon"]

  filter {
    name   = "platform"
    values = ["windows"]
  }

  filter {
    name   = "name"
    values = [lookup(var.amis_os_map_regex, var.os)]
  }
}
