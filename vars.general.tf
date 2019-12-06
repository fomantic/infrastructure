variable "redirector_ip_address" {
  description = "The IP address for the redirector"
  type        = string
  default     = "178.128.35.93"
}

variable "discord_github_channel_webhook" {
  description = "Discord webhook URL for the GitHub channel"
  type        = string
}

variable "discord_github_admin_channel_webhook" {
  description = "Discord webhook URl for admin GitHub channel (same as public channel but for organisation instead of specific repos)"
  type        = string
}

variable "github_pages_ip_addresses" {
  description = "IP Addresses for GitHub Pages"
  type        = list(string)
  default     = [
    "185.199.108.153",
    "185.199.109.153",
    "185.199.110.153",
    "185.199.111.153"
  ]
}
