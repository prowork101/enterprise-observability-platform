resource "aws_instance" "monitoring_server" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [var.security_group_id]

  user_data = file("${path.root}/user-data.sh")

  tags = {
    Name = "monitoring-server"
  }
}
