resource "digitalocean_domain" "fomantic-ui-com" {
  name = "fomantic-ui.com"
}

# Documentation (GitHub Pages)
resource "digitalocean_record" "fomantic-ui-com-apex1" {
  domain  = digitalocean_domain.fomantic-ui-com.name
  type    = "A"
  name    = "@"
  value   = "185.199.108.153"
}

resource "digitalocean_record" "fomantic-ui-com-apex2" {
  domain  = digitalocean_domain.fomantic-ui-com.name
  type    = "A"
  name    = "@"
  value   = "185.199.109.153"
}

resource "digitalocean_record" "fomantic-ui-com-apex3" {
  domain  = digitalocean_domain.fomantic-ui-com.name
  type    = "A"
  name    = "@"
  value   = "185.199.110.153"
}

resource "digitalocean_record" "fomantic-ui-com-apex4" {
  domain  = digitalocean_domain.fomantic-ui-com.name
  type    = "A"
  name    = "@"
  value   = "185.199.111.153"
}

# Mail
resource "digitalocean_record" "fomantic-ui-com-mail-aspmx" {
  domain    = digitalocean_domain.fomantic-ui-com.name
  type      = "MX"
  name      = "@"
  priority  = "1"
  value     = "aspmx.l.google.com."
}

resource "digitalocean_record" "fomantic-ui-com-mail-alt1" {
  domain    = digitalocean_domain.fomantic-ui-com.name
  type      = "MX"
  name      = "@"
  priority  = "5"
  value     = "alt1.aspmx.l.google.com."
}

resource "digitalocean_record" "fomantic-ui-com-mail-alt2" {
  domain    = digitalocean_domain.fomantic-ui-com.name
  type      = "MX"
  name      = "@"
  priority  = "5"
  value     = "alt2.aspmx.l.google.com."
}

resource "digitalocean_record" "fomantic-ui-com-mail-alt3" {
  domain    = digitalocean_domain.fomantic-ui-com.name
  type      = "MX"
  name      = "@"
  priority  = "10"
  value     = "alt3.aspmx.l.google.com."
}

resource "digitalocean_record" "fomantic-ui-com-mail-alt4" {
  domain    = digitalocean_domain.fomantic-ui-com.name
  type      = "MX"
  name      = "@"
  priority  = "10"
  value     = "alt4.aspmx.l.google.com."
}
