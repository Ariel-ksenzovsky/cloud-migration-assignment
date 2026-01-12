project = "migrated-app"
env     = "dev"
region  = "eu-west-1"

vpc_cidr = "10.10.0.0/16"

public_subnet_cidrs  = ["10.10.1.0/24", "10.10.2.0/24"]
private_subnet_cidrs = ["10.10.11.0/24", "10.10.12.0/24"]

instance_type = "t3.micro"
ami_id        = "ami-xxxxxxxxxxxxxxxxx" # החלף ב-AMI מתאים ל-region שלך

desired_capacity = 2
min_size         = 1
max_size         = 3
