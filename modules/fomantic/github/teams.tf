resource "github_team" "teams" {
  for_each    = var.teams
  name        = each.value["name"]
  description = each.value["description"]
  privacy     = each.value["privacy"]
}

# Admin Repositories
resource "github_team_repository" "admin-repositories" {
  for_each    = var.team_repo_access["admins"]
  team_id     = github_team.teams["admins"].id
  repository  = each.key
  permission  = each.value
}

# Bots Repositories
resource "github_team_repository" "bot-repositories" {
  for_each    = var.team_repo_access["bots"]
  team_id     = github_team.teams["bots"].id
  repository  = each.key
  permission  = each.value
}

# Helpers Repositories
resource "github_team_repository" "helper-repositories" {
  for_each    = var.team_repo_access["helpers"]
  team_id     = github_team.teams["helpers"].id
  repository  = each.key
  permission  = each.value
}

# Maintainers Repositories
resource "github_team_repository" "maintainer-repositories" {
  for_each    = var.team_repo_access["maintainers"]
  team_id     = github_team.teams["maintainers"].id
  repository  = each.key
  permission  = each.value
}
