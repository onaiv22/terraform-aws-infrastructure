
This scripts will spin up a vpc with two subnets with defined network rules.
it associates the web servers which will allow interaction with client to accept communication on port 80 from any connection.

To use this script simple clone to your desired path, note terraform must be installed and configured and simply input in your Access and secret keys in terraform.tfvars to run it if not it will fail. I have also explained a few terms below to helps user grasp some parts of the code. Note i have titled this project WEBOPs.



#This is a documentation for the WEBOPs Project

1. Provision VPC with terraform

  VPC configurations:

    2 subnets:
          a,web_servers
          b,DB_servers

Route table - Assign route tables to subnets

Internet Gateways - Routing your vpc to the internet..

Elastic IPs - Public IP addresses you can associate with instances. Drawing from a pool of IP addresses provided by AWS. Note: once released it               goes back to the pool and any one can use it.

Endpoint - Directing traffic to S3 bucket; to stay locally.


NAT - Network Address Translation: makes it easy for every computer not to have its own unique IP address. Its built into the router.





VPC ELEMENTS FOR THIS PROJECT:

Region: eu-west

CIDR Block: 192.168.0.O/16

SUBNET:

      DB_Servers: Subnet1:
      
         AZ: eu-west-1 192.168.1.0/24 Private subnet
         
      web_servers: Subnet2:
      
         AZ: eu-west-2 192.168.2.0/24 Public Subnet

    



Later part:


After provisioning the Infrastructure, I will then start pushing configurations using Ansible. I have developed different roles which I will be pushing on to our boxes. Note I will be using redhat/centos/fedora/amazon images in this project.

Automation Process: 


Push configurations using Ansible roles.




Implement containerized solutions in managing our application as microservices using docker containers


Implementing kubernetes solution in managing, optimizing our container infrastructure.


Implementing Nginx web server as a reverse proxy and load balancer to Managing Apache servers in this environment


please ignore below line just adding this to test my jemkins pipeline...


