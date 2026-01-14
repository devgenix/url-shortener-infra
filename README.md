# Infrastructure for Simple URL Shortener

This repository contains the Terraform code to deploy the URL shortener application to AWS App Runner.

## Prerequisites
1. **GitHub Connection:** AWS App Runner requires a connection to GitHub. Since this requires a manual handshake, you must:
   - Go to the [AWS App Runner Console](https://console.aws.amazon.com/apprunner/home).
   - Navigate to **GitHub connections**.
   - Create a new connection and follow the prompts to authorize AWS.
   - Copy the **Connection ARN**.

## Deployment
1. Initialize Terraform:
   ```bash
   terraform init
   ```
2. Apply the configuration (provide the Connection ARN when prompted):
   ```bash
   terraform apply -var="github_connection_arn=YOUR_CONNECTION_ARN"
   ```
