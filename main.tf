provider "aws" {
  region = var.aws_region
}

resource "aws_iam_role" "apprunner_service_role" {
  name = "${var.service_name}-service-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "build.apprunner.amazonaws.com"
        }
      },
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "tasks.apprunner.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "apprunner_service_role_policy" {
  role       = aws_iam_role.apprunner_service_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSAppRunnerServicePolicyForECRAccess"
}

resource "aws_apprunner_service" "this" {
  service_name = var.service_name

  source_configuration {
    authentication_configuration {
      connection_arn = var.app_runner_connection_arn
    }
    code_repository {
      repository_url = var.github_repo_url
      source_code_version {
        type  = "BRANCH"
        value = var.github_branch
      }
      code_configuration {
        configuration_source = "REPOSITORY"
      }
    }
  }

  instance_configuration {
    cpu    = "1024"
    memory = "2048"
  }

  tags = {
    Name = var.service_name
  }
}
