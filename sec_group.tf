#create aws security group
resource "aws_security_group" "webops_firewall" {
  name = "webops_firewall"
  description = "ec2 security group rules"
  vpc_id = "${aws_vpc.vpc_femi.id}"

  #ssh access
  ingress{
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks =["0.0.0.0/0"]
  }
  #http access from anywhere
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
