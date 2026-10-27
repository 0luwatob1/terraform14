resource "aws_instance" "web" {
  ami                                  = "ami-04b938437b69a2c9c"
  associate_public_ip_address          = true
  availability_zone                    = "us-east-1c"
  instance_type                        = "t3.micro"
  key_name                             = "ec2key"
  security_groups                      = ["launch-wizard-1"]
  subnet_id                            = "subnet-01dc9d6d25fb6b53d"
  tags = {
    Name = "dev-app-server-test"
  }
  tags_all = {
    Name = "dev-app-server"
  }
}
