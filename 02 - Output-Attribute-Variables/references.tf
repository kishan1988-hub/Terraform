# here we are going to see about the referecing of data from previously created object getting used for creating new objects

resource aws_instance "myec2" {
  ami ="ami-0a9d27a9f4f5c0efc"
  instance_type = "t2.micro"
}

resource aws_eip "myec2_lb" {
  instance = aws_instance.myec2.id
  vpc = true
}

resource aws_security_group "myec2_tls" {

  name = "mk-sec-group"

ingress{
  from_port = 443
  to_port = 443
  protocol = "tcp"
  cidr_blocks = ["${aws_eip.myec2_lb.public_ip}/32"]
}
}
