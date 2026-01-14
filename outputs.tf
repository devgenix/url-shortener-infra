output "service_url" {
  value = aws_apprunner_service.this.service_url
}

output "connection_arn" {
  value = aws_apprunner_connection.github.arn
}

output "connection_status" {
  value = aws_apprunner_connection.github.status
}
