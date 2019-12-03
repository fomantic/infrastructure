resource "digitalocean_domain" "fomantic-ui-dev" {
  name = "fomantic.com"
}

resource "digitalocean_record" "apex" {
  domain  = digitalocean_domain.fomantic-ui-dev
  type    = "A"
  name    = "@"
  value   = "178.128.35.93"
}
