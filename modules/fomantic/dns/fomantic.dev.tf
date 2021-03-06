resource "digitalocean_domain" "fomantic-dev" {
  name = "fomantic.dev"
}

resource "digitalocean_record" "fomantic-dev-apex" {
  domain  = digitalocean_domain.fomantic-dev.name
  type    = "A"
  name    = "@"
  value   = var.redirector_ip
}
