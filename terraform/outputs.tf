output "sns_topic_arn" {
  value = module.sns.sns_topic_arn
}

output "monitoring_server_public_ip" {
  value = module.ec2_monitoring.public_ip
}
output "instance_id" {
  value = module.ec2_monitoring.instance_id
}