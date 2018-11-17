# Create a public subnet called Web
resource "aws_subnet" "Web" {
  vpc_id = "${aws_vpc.vpc_femi.id}"
  cidr_block = "192.168.1.0/24"
  map_public_ip_on_launch = true
  availability_zone = "eu-west-1a"
  tags{
      Name = "Web servers"
  }
}
#create a private subnet called db
resource "aws_subnet" "db" {
  vpc_id = "${aws_vpc.vpc_femi.id}"
  cidr_block = "192.168.2.0/24"
  map_public_ip_on_launch = false
  availability_zone = "eu-west-1b"
  tags{
      Name = "DB Servers"
  }
}
