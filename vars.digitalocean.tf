variable "do_token" {
  description = "DigitalOcean token"
  type        = string
}

provider "digitalocean" {
  token = var.do_token
}
