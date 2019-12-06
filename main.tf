terraform {
  backend "atlas" {
    name = "fomantic/infrastructure"
  }
}

# fomantic
module "fomantic-dns" {
  source              = "./modules/fomantic/dns"
  redirector_ip       = var.redirector_ip_address
  gh_pages_ip_address = var.github_pages_ip_addresses
}

# semantic (we hold a semantic domain so we will put its dns here)
module "semantic-dns" {
  source        = "./modules/semantic/dns"
  redirector_ip = var.redirector_ip_address
}
