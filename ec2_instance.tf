#creating an EC2 instance in Web subnet
resource "aws_instance" "master" {
    ami  = "${var.ami[0]}"
    instance_type = "t2.micro"
    key_name = "MyKey-Pair1"
    associate_public_ip_address = true
    monitoring = false
    vpc_security_group_ids = ["${aws_security_group.webops_firewall.id}"]
    subnet_id = "${aws_subnet.Web.id}"
    tenancy = "default"
    tags {
        Name = "web101"
        description = "web development server for web subnet"
        }
 }

 #creating an EC2 instance in db subnet
resource "aws_instance" "slave-1" {
    ami  = "${var.ami[1]}"
    instance_type = "t2.micro"
    key_name = "MyKey-Pair1"
    associate_public_ip_address = false
    monitoring = false
    vpc_security_group_ids = ["${aws_security_group.webops_firewall.id}"]
    subnet_id = "${aws_subnet.db.id}"
    tenancy = "default"
    tags {
        Name = "Db101"
        description = "db server for db subnet"
        }
 }
