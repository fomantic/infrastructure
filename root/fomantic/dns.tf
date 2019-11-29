# .com
resource "digitalocean_domain" "fomantic-ui-com" {
  name       = "fomantic-ui.com"
  ip_address = "185.199.108.153" # GitHub Pages
}
resource "digitalocean_domain" "fomantic-com" {
  name       = "fomantic.com"
  ip_address = "178.128.35.93"
}

# .dev
resource "digitalocean_domain" "fomantic-ui-dev" {
  name       = "fomantic-ui.dev"
  ip_address = "178.128.35.93"
}
resource "digitalocean_domain" "fomantic-dev" {
  name       = "fomantic.dev"
  ip_address = "178.128.35.93"
}

# .org
resource "digitalocean_domain" "fomantic-ui-org" {
  name       = "fomantic-ui.org"
  ip_address = "178.128.35.93"
}
resource "digitalocean_domain" "fomantic-org" {
  name       = "fomantic.org"
  ip_address = "178.128.35.93"
}
