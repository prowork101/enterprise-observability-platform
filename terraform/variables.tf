variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "alert_email" {
  description = "Email for CloudWatch alerts"
  type        = string
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "my_ip" {
  description = "Your public IP address with CIDR"
  type        = string
}