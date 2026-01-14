# url-shortener-infra

Terraform infrastructure for AWS App Runner.

## Deployment

This infrastructure is managed via GitHub Actions.

### Manual Steps

1. Add `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` to GitHub Secrets.
2. Complete the GitHub connection handshake in the AWS Console after the first successful `terraform apply`.

## Resources

- `aws_apprunner_connection.github_connection`
- `aws_apprunner_service.url_shortener`

Trigger Terraform workflow run (Attempt 2 - Credentials Set)
