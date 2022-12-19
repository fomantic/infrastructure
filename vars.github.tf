variable "github_token" {
  description = "GitHub token"
  type        = string
}

variable "github_pages_ip_addresses" {
  description = "IP Addresses for GitHub Pages"
  type        = list(string)
  default     = [
    "185.199.108.153",
    "185.199.109.153",
    "185.199.110.153",
    "185.199.111.153"
  ]
}

variable "github_organisation" {
  description = "GitHub organisation"
  type        = string
  default     = "fomantic"
}

variable "github_teams" {
  description   = "GitHub organisation teams"
  type          = map(map(string))
  default       = {
    admins        = {
      name          = "Admins"
      description   = "Organisation administrators"
      privacy       = "closed"
    }
    bots          = {
      name          = "Bots"
      description   = "Organisation bots"
      privacy       = "secret"
    },
    helpers       = {
      name          = "Helpers"
      description   = "Individuals who donate time to help triage issues and provide support"
      privacy       = "closed"
    },
    maintainers   = {
      name          = "Maintainers"
      description   = "Individuals who help triage issues, provide support and contribute code regularly to help maintain the project"
      privacy       = "closed"
    }
  }
}

variable "github_team_repository_access" {
  description = "GitHub organisation team repository access"
  type        = map(map(string))
  default     = {
    admins      = {
      Fomantic-UI           = "admin"
      Fomantic-UI-Docs      = "admin"
      Fomantic-UI-CSS       = "admin"
      Fomantic-UI-LESS      = "admin"
      Fomantic-UI-SASS      = "admin"
      create-fomantic-icons = "admin"
      branding              = "admin"
      infrastructure        = "push"
      rfcs                  = "admin"
      Fomantic-UI-vscode-snippets = "admin"
    }
    bots        = {
      Fomantic-UI       = "push"
      Fomantic-UI-Docs  = "push"
    }
    helpers     = {
      Fomantic-UI       = "pull"
      Fomantic-UI-Docs  = "pull"
    }
    maintainers = {
      Fomantic-UI       = "push"
      Fomantic-UI-Docs  = "push"
      infrastructure    = "push"
    }
  }
}

variable "github_members" {
  description   = "GitHub organisation members"
  type          = map(string)
  default       = {
    hammy2899   = "admin" // organisation owner
    prudho      = "member"
    ColinFrick  = "member"
    lubber-de   = "admin"
    ko2in       = "member"

    // bots
    fomanticbot = "member"
  }
}

variable "github_member_teams" {
  description = "GitHub organisation member teams"
  type        = map(map(string))
  default     = {
    admins        = {
      hammy2899   = "maintainer"
      prudho      = "member"
      ColinFrick  = "member"
      lubber-de   = "member"
    }
    bots          = {
      fomanticbot = "member"
    }
    helpers       = {
      hammy2899   = "maintainer"
    }
    maintainers   = {
      hammy2899   = "maintainer"
      ko2in      = "member"
    }
  }
}

provider "github" {
  token = var.github_token
  organization = var.github_organisation
}
