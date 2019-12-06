terraform {
  backend "atlas" {
    name = "fomantic/infrastructure"
  }
}

# fomantic
module "fomantic-dns" {
  source              = "./modules/fomantic/dns"
  redirector_ip       = var.redirector_ip_address
  gh_pages_ip_address = var.github_pages_ip_addresses
}
module "fomantic-github" {
  source                  = "./modules/fomantic/github"
  teams                   = var.github_teams
  team_repo_access        = var.github_team_repository_access
  members                 = var.github_members
  member_teams            = var.github_member_teams
  discord_public_webhook  = var.discord_github_channel_webhook
  discord_admin_webhook   = var.discord_github_admin_channel_webhook
}

# semantic (we hold a semantic domain so we will put its dns here)
module "semantic-dns" {
  source        = "./modules/semantic/dns"
  redirector_ip = var.redirector_ip_address
}
