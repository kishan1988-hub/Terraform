resource "aws_instance" "myec2" {
  ami = "ami-0325e3016099f9112"
  instance_type = "t2.micro"
  key_name = "dropmailtokishan"
  connection {
    type = "ssh"
    user = "ubuntu"
    private_key = file("./dropmailtokishan.pem")
    host = self.public_ip
  }
  provisioner "remote-exec" {
    inline = [
      "sudo apt install nginx -y",
      "sudo systemctl start nginx"
    ]

  }
}
