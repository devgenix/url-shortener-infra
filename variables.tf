variable "aws_region" {
  description = "AWS region"
  type        = "string"
  default     = "us-east-1"
}

variable "github_connection_arn" {
  description = "The ARN of the App Runner connection to GitHub. You must create this manually in the AWS Console first to complete the handshake."
  type        = "string"
}
