# URL Shortener Infrastructure

This repository contains Terraform code to deploy a simple URL shortener to AWS App Runner.

## Resources Created

- **AWS App Runner Service**: Automatically builds and deploys the Flask application from the GitHub repository.
- **IAM Roles**: Necessary permissions for App Runner to access other AWS services if needed.

## Deployment

Infrastructure is managed via GitHub Actions.

### Prerequisites

1.  **AWS Credentials**: Add `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` to GitHub Secrets.
2.  **GitHub Connection**: After the first run, manually complete the handshake in the AWS Console for the created App Runner connection.

## Variables

- `app_name`: Name of the App Runner service.
- `github_repo_url`: URL of the application repository.

---
*Triggered workflow run to initialize infrastructure.*
