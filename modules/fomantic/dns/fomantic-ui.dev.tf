resource "digitalocean_domain" "fomantic-ui-dev" {
  name = "fomantic-ui.dev"
}

resource "digitalocean_record" "fomantic-ui-dev-apex" {
  domain  = digitalocean_domain.fomantic-ui-dev.name
  type    = "A"
  name    = "@"
  value   = var.redirector_ip
}
