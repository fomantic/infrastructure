resource "digitalocean_domain" "fomantic-ui-com" {
  name = "fomantic-ui.com"
}

# Documentation (GitHub Pages)
resource "digitalocean_record" "apex1" {
  domain  = digitalocean_domain.fomantic-ui-com
  type    = "A"
  name    = "@"
  value   = "185.199.108.153"
}

resource "digitalocean_record" "apex2" {
  domain  = digitalocean_domain.fomantic-ui-com
  type    = "A"
  name    = "@"
  value   = "185.199.109.153"
}

resource "digitalocean_record" "apex3" {
  domain  = digitalocean_domain.fomantic-ui-com
  type    = "A"
  name    = "@"
  value   = "185.199.110.153"
}

resource "digitalocean_record" "apex4" {
  domain  = digitalocean_domain.fomantic-ui-com
  type    = "A"
  name    = "@"
  value   = "185.199.111.153"
}

# Mail
resource "digitalocean_record" "mail-aspmx" {
  domain    = digitalocean_domain.fomantic-ui-com
  type      = "MX"
  name      = "@"
  priority  = "1"
  value     = "ASPMX.L.GOOGLE.COM"
}

resource "digitalocean_record" "mail-alt1" {
  domain    = digitalocean_domain.fomantic-ui-com
  type      = "MX"
  name      = "@"
  priority  = "5"
  value     = "ALT1.ASPMX.L.GOOGLE.COM"
}

resource "digitalocean_record" "mail-alt2" {
  domain    = digitalocean_domain.fomantic-ui-com
  type      = "MX"
  name      = "@"
  priority  = "5"
  value     = "ALT2.ASPMX.L.GOOGLE.COM"
}

resource "digitalocean_record" "mail-alt3" {
  domain    = digitalocean_domain.fomantic-ui-com
  type      = "MX"
  name      = "@"
  priority  = "10"
  value     = "ALT3.ASPMX.L.GOOGLE.COM"
}

resource "digitalocean_record" "mail-alt4" {
  domain    = digitalocean_domain.fomantic-ui-com
  type      = "MX"
  name      = "@"
  priority  = "10"
  value     = "ALT4.ASPMX.L.GOOGLE.COM"
}
