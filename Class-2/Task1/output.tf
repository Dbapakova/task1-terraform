output "webservers_public_IPs" {
  value       = [aws_instance.webservers[0].public_ip, aws_instance.webservers[1].public_ip, aws_instance.webservers[2].public_ip]
  description = "Public IP of EC2 Instances"
}

output "elb-dns-name" {
  value       = aws_elb.application-elb.dns_name
  description = "DNS name of elb"
}