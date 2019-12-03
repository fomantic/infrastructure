resource "digitalocean_domain" "fomantic-ui-dev" {
  name = "fomantic.com"
}

resource "digitalocean_record" "fomantic-ui-com-apex" {
  domain  = digitalocean_domain.fomantic-ui-com.name
  type    = "A"
  name    = "@"
  value   = "178.128.35.93"
}
