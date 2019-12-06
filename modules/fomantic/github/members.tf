resource "github_membership" "members" {
  for_each  = var.members
  username  = each.key
  role      = each.value
}

# Admins
resource "github_team_membership" "admin-team-members" {
  for_each  = var.member_teams["admins"]
  team_id   = github_team.teams["admins"].id
  username  = each.key
  role      = each.value
}

# Bots
resource "github_team_membership" "bot-team-members" {
  for_each  = var.member_teams["bots"]
  team_id   = github_team.teams["bots"].id
  username  = each.key
  role      = each.value
}

# Helpers
resource "github_team_membership" "helper-team-members" {
  for_each  = var.member_teams["helpers"]
  team_id   = github_team.teams["helpers"].id
  username  = each.key
  role      = each.value
}

# Maintainers
resource "github_team_membership" "maintainer-team-members" {
  for_each  = var.member_teams["maintainers"]
  team_id   = github_team.teams["maintainers"].id
  username  = each.key
  role      = each.value
}
