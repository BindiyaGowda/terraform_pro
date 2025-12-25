resource "aws_instance" "example" {
  ami           = "ami-02b8269d5e85954ef"
  instance_type = var.instance_type

  tags = {
    Name = "tf-ec2"
  }
}