variable "sg_port" {
  default = [8200,8201,8202,9300]
  type = list
}

resource "aws_security_group" "dynamic_sg" {
    name = "dynamic security group"
    description = "created from terraform"

    dynamic "ingress" {
      for_each = var.sg_port
      iterator = port
      content {
      from_port = port.value
      to_port = port.value
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
}
}

output "dynamic_sg" {
  value = aws_security_group.dynamic_sg.name
}
