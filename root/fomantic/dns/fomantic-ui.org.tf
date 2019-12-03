resource "digitalocean_domain" "fomantic-ui-org" {
  name = "fomantic.com"
}

resource "digitalocean_record" "apex" {
  domain  = digitalocean_domain.fomantic-ui-org
  type    = "A"
  name    = "@"
  value   = "178.128.35.93"
}
