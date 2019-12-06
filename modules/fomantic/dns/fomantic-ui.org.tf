resource "digitalocean_domain" "fomantic-ui-org" {
  name = "fomantic-ui.org"
}

resource "digitalocean_record" "fomantic-ui-org-apex" {
  domain  = digitalocean_domain.fomantic-ui-org.name
  type    = "A"
  name    = "@"
  value   = var.redirector_ip
}
