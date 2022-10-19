/* outputs.tf
   outputs to display */
   
output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.app_server.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server.public_ip
}

output "availability_zone" {
  description = "AZ of the EC2 instance"
  value       = aws_instance.app_server.availability_zone
}

output "instance_type" {
  description = "Instance Type of the EC2 instance"
  value       = aws_instance.app_server.instance_type
}

output "instance_state" {
  description = "Instance State of the EC2 instance"
  value       = aws_instance.app_server.instance_state
}
