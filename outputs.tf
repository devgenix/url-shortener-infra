output "app_runner_service_url" {
  description = "The URL of the App Runner service"
  value       = aws_apprunner_service.this.service_url
}

output "service_id" {
  description = "The ID of the App Runner service"
  value       = aws_apprunner_service.this.service_id
}
