region = "us-east-1"
machine_type = "t2.micro"
cidr_block = "0.0.0.0/0"
ssh_key_name = "ssh-key"
ingress_protocol = "tcp"
egress_protocol = "-1"
ingress_TCP_port = 22
ingress_TCP_port2 = 3000
egress_TCP_port = 0
vpc_cidr = "10.0.0.0/16"
public_subnet_cidr = "10.0.1.0/24"
public_subnet_cidr2 = "10.0.2.0/24"
private_subnet_cidr = "10.0.3.0/24"
private_subnet_cidr2 = "10.0.4.0/24"