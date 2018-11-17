# Create an internet gateway for the VPC called gw and Associate gw to vpc
resource "aws_internet_gateway" "gw"{
  vpc_id = "${aws_vpc.vpc_femi.id}"
  tags {
      name = "InternetGateway"
  }
}
