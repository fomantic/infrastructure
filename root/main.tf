variable "do_token" {}

terraform {
  backend "atlas" {
    name = "fomantic/infrastructure"
  }
}

provider "digitalocean" {
  token = var.do_token
}

module "fomantic" { source = "./fomantic" }
module "semantic" { source = "./semantic" }
