resource "aws_apprunner_connection" "github" {
  connection_name = "github-connection"
  provider_type   = "GITHUB"
}

resource "aws_apprunner_service" "this" {
  service_name = var.service_name

  source_configuration {
    authentication_configuration {
      connection_arn = aws_apprunner_connection.github.arn
    }
    code_repository {
      repository_url = var.repository_url
      source_code_version {
        type  = "BRANCH"
        value = "main"
      }
      code_configuration {
        configuration_source = "REPOSITORY"
      }
    }
  }

  network_configuration {
    egress_configuration {
      egress_type = "DEFAULT"
    }
  }
}
