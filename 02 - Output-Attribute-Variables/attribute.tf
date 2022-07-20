# here we are going to see about attribute and output handling in terraform
# attribute in terraform - denotes to some named piece of data belonging to some object

resource "aws_instance" "local_ec2" {
  instance_type = "t2.micro" # attribute of the terraform object aws_instance
  ami           = "ami-0a9d27a9f4f5c0efc"
  tags = {
    Name = "attribute-output-handling"
  }
}

output "local_ec2_id" {
  description = "output of the ID from earlier created EC2"
  value       = aws_instance.local_ec2.id
}

output "local_ec2_public_ip" {
  description = "printing public IP Address"
  value       = aws_instance.local_ec2.public_ip
}
