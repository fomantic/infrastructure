resource "digitalocean_domain" "fomantic-org" {
  name = "fomantic.org"
}

resource "digitalocean_record" "apex" {
  domain  = digitalocean_domain.fomantic-org
  type    = "A"
  name    = "@"
  value   = "178.128.35.93"
}
