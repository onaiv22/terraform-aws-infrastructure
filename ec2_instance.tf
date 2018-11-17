#creating an EC2 instance in Web subnet
resource "aws_instance" "Web_server" {
    ami  = "ami-047bb4163c506cd98"
    instance_type = "t2.micro"
    key_name = "MyKey-Pair1"
    associate_public_ip_address = true
    monitoring = false
    vpc_security_group_ids = ["${aws_security_group.webops_firewall.id}"]
    subnet_id = "${aws_subnet.Web.id}"
    tenancy = "default"
    tags {
        Name = "Development_server"
        description = "development server for web subnet"
        }
 }
