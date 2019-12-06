variable "teams" {
  type = map(map(string))
}

variable "team_repo_access" {
  type = map(map(string))
}

variable "members" {
  type = map(string)
}

variable "member_teams" {
  type = map(map(string))
}

variable "discord_public_webhook" {
  type = string
}

variable "discord_admin_webhook" {
  type = string
}
