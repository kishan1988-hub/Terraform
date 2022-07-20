resource "aws_instance" "myec2" {
  ami = "ami-0325e3016099f9112"
  instance_type = "t2.micro"
  key_name = "dropmailtokishan"
  provisioner "local-exec" {
    command = "echo 'HelloWorld' > local-exec.txt"
  }
}
