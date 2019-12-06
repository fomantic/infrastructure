// Webhook for public GitHub channel for Fomantic-UI repo events
resource "github_repository_webhook" "discord-public" {
  repository  = github_repository.repos["Fomantic-UI"].name
  configuration {
    url           = var.discord_public_webhook
    content_type  = "json"
    insecure_ssl  = "0"
  }
  events      = ["*"]
}

// Webhook for admin GitHub channel for all organisation events
resource "github_organization_webhook" "discord-admin" {
  configuration {
    url           = var.discord_admin_webhook
    content_type  = "json"
    insecure_ssl  = "0"
  }
  events = ["*"]
}

