#create a route table for the vpc
resource "aws_route_table" "r"{
  vpc_id = "${aws_vpc.vpc_femi.id}"
  tags {
      Name = "vpc_route_table"
  }
}
#create internet gateway to route all
resource "aws_route" "internet_access" {
  route_table_id         = "${aws_vpc.vpc_femi.main_route_table_id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.gw.id}"
}
#Associate the public subnet to the internet_access route table
resource "aws_route_table_association" "Web"{
  subnet_id = "${aws_subnet.Web.id}"
  route_table_id = "${aws_vpc.vpc_femi.main_route_table_id}"
 }
#create private route table for Nat users
resource "aws_route_table" "db_route_Nat_user" {
    vpc_id = "${aws_vpc.vpc_femi.id}"
    tags {
        Name = "private route table"
    }
}

