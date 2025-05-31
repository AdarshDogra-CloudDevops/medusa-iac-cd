data "aws_vpc" "default" {
  default = true
}

# Fetch both subnets explicitly by ID
data "aws_subnet" "subnet1" {
  id = "subnet-0f21371ecc142b78b"  # <-- Replace with subnet ID from eu-north-1a
}

data "aws_subnet" "subnet2" {
  id = "subnet-03d6d50b3d59a2ce1"  # <-- Replace with newly created subnet in eu-north-1b
}


