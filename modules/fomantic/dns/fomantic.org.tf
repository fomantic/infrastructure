resource "digitalocean_domain" "fomantic-org" {
  name = "fomantic.org"
}

resource "digitalocean_record" "fomantic-org-apex" {
  domain  = digitalocean_domain.fomantic-org.name
  type    = "A"
  name    = "@"
  value   = var.redirector_ip
}
