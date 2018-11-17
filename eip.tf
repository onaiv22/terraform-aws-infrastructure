#create an elastic IP, for the Nat-gateway. needs to have a public IP to be internet facing
resource "aws_eip" "femi_eip" {
  vpc = true
  depends_on = ["aws_internet_gateway.gw"]
}
#create Nat-gateway on the public subnet which is represented as the Web
resource "aws_nat_gateway" "nat" {
  allocation_id = "${aws_eip.femi_eip.id}"
  subnet_id = "${aws_subnet.Web.id}"
  depends_on = ["aws_internet_gateway.gw"]
}
