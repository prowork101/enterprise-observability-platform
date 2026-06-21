module "sns" {
  source = "./modules/sns"

  alert_email = var.alert_email
}

module "security_groups" {
  source = "./modules/security-groups"

  my_ip = var.my_ip
}

module "ec2_monitoring" {
  source = "./modules/ec2-monitoring"

  ami_id            = var.ami_id
  instance_type     = var.instance_type
  security_group_id = module.security_groups.security_group_id
}
module "cloudwatch" {
  source = "./modules/cloudwatch"

  instance_id   = module.ec2_monitoring.instance_id
  sns_topic_arn = module.sns.sns_topic_arn
}