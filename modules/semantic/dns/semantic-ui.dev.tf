resource "digitalocean_domain" "semantic-ui-dev" {
  name = "semantic-ui.dev"
}

resource "digitalocean_record" "semantic-ui-dev-apex" {
  domain  = digitalocean_domain.semantic-ui-dev.name
  type    = "A"
  name    = "@"
  value   = var.redirector_ip
}
