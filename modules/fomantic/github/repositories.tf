locals {
  repos = {
    Fomantic-UI           = {
      description   = "Fomantic-UI is the official community fork of Semantic-UI"
      homepage_url  = "https://fomantic-ui.com"
      topics        = [
        "javascript", "css", "ui", "css-framework", "semantic", "fork",
        "fomantic", "fomantic-ui", "component-library", "hacktoberfest"
      ]
      has_downloads = true
      has_issues    = true
      has_projects  = true
      has_wiki      = true
    }
    Fomantic-UI-Docs      = {
      description   = "Official Documentation for Fomantic-UI"
      homepage_url  = "https://fomantic-ui.com"
      topics        = [
        "fomantic", "documentation"
      ]
      has_downloads = true
      has_issues    = true
      has_projects  = true
      has_wiki      = true
    }
    Fomantic-UI-CSS       = {
      description   = "CSS only distribution of Fomantic UI"
      homepage_url  = "https://fomantic-ui.com"
      topics        = [
        "fomantic-ui", "css", "fomantic"
      ]
      has_downloads = true
      has_issues    = false
      has_projects  = false
      has_wiki      = false
    }
    Fomantic-UI-LESS      = {
      description   = "LESS only distribution of Fomantic UI"
      homepage_url  = "https://fomantic-ui.com"
      topics        = [
        "fomantic-ui", "less", "fomantic"
      ]
      has_downloads = true
      has_issues    = false
      has_projects  = false
      has_wiki      = false
    }
    Fomantic-UI-SASS      = {
      description   = "Fomantic UI, converted to SASS and ready to drop into Rails & Compass."
      homepage_url  = "https://fomantic-ui.com"
      topics        = [
        "fomantic-ui", "sass", "fomantic"
      ]
      has_downloads = true
      has_issues    = true
      has_projects  = true
      has_wiki      = true
    }
    infrastructure        = {
      description   = "Official fomantic organisation infrastructure"
      homepage_url  = "https://fomantic-ui.com"
      topics        = [
        "fomantic", "fomantic-ui", "infrastructure",
        "infrastructure-as-code"
      ]
      has_downloads = true
      has_issues    = true
      has_projects  = true
      has_wiki      = true
    }
    create-fomantic-icons = {
      description   = "Generate the icon.variables and icon.html.eco files for Fomantic-UI (or Semantic-UI)"
      homepage_url  = ""
      topics        = [
        "fomantic-ui", "semantic-ui", "fontawesome", "icons", "fomantic"
      ]
      has_downloads = true
      has_issues    = true
      has_projects  = true
      has_wiki      = true
    }
    branding              = {
      description   = "All branding assets and materials for Fomantic-UI"
      homepage_url  = "https://fomantic-ui.com"
      topics        = [
        "fomantic-ui", "branding",  "fomantic", "branding-assets", "logos"
      ]
      has_downloads = true
      has_issues    = true
      has_projects  = true
      has_wiki      = true
    }
    apprentice-action     = {
      description   = "The project apprentice 🕴"
      homepage_url  = "https://fomantic-ui.com"
      topics        = [
        "fomantic-ui", "fomantic", "action"
      ]
      has_downloads = true
      has_issues    = true
      has_projects  = true
      has_wiki      = true
    }
    rfcs     = {
      description   = "RFCs for changes to Fomantic"
      homepage_url  = "https://fomantic.dev"
      topics        = [
        "fomantic-ui", "fomantic", "rfc", "rfc-process"
      ]
      has_downloads = false
      has_issues    = true
      has_projects  = false
      has_wiki      = false
    }
    Fomantic-UI-vscode-snippets = {
      description   = "Fomantic-UI Snippets for VS Code"
      homepage_url  = ""
      topics        = [
        "fomantic-ui", "fomantic", "vscode", "snippets"
      ]
      has_downloads = true
      has_issues    = true
      has_projects  = true
      has_wiki      = true
    }
  }
}

resource "github_repository" "repos" {
  for_each      = local.repos
  name          = each.key
  description   = each.value["description"]
  homepage_url  = each.value["homepage_url"]
  topics        = each.value["topics"]
  has_downloads = each.value["has_downloads"]
  has_issues    = each.value["has_issues"]
  has_projects  = each.value["has_projects"]
  has_wiki      = each.value["has_wiki"]
}
