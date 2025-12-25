#create vpc
resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "tf-vpc"
  }
}

#create public and private subnet
resource "aws_subnet" "pub_sub" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.pub_sub_cidr_block

  tags = {
    Name = "public_sub"
  }
}
resource "aws_subnet" "priv_sub" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.priv_sub_cidr_block

  tags = {
    Name = "private_sub"
  }
}

#craete nat gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.my_vpc.id

  tags = {
    Name = "igw"
  }
}

#create route table public and private
resource "aws_route_table" "pub_rt" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "put_rt"
  }
}
resource "aws_route_table" "priv_rt" {
  vpc_id = aws_vpc.my_vpc.id
  tags = {
    Name = "priv_rt"
  }
}

#associate route table to public-subnet
resource "aws_route_table_association" "pub" {
  subnet_id      = aws_subnet.pub_sub.id
  route_table_id = aws_route_table.pub_rt.id
}
resource "aws_route_table_association" "priv" {
  subnet_id      = aws_subnet.priv_sub.id
  route_table_id = aws_route_table.priv_rt.id
}