resource "aws_instance" "app" {
  ami           = "ami-0c398cb65a93047f2"
  instance_type = "t3.micro"
  subnet_id     = var.subnet_id
  vpc_security_group_ids = [var.sg_id]

  user_data = <<EOF
#!/bin/bash
apt update -y
apt install docker.io -y
docker run -d -p 8080:80 nginx
EOF
}
