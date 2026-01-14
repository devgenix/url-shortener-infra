output "app_runner_service_url" {
  description = "The URL of the App Runner service"
  value       = aws_apprunner_service.url_shortener.service_url
}

output "connection_arn" {
  description = "The ARN of the App Runner connection"
  value       = var.app_runner_connection_arn
}
