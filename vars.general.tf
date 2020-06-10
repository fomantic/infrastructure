variable "redirector_ip_address" {
  description = "The IP address for the redirector"
  type        = string
  default     = "165.22.95.182"
}

variable "discord_github_channel_webhook" {
  description = "Discord webhook URL for the GitHub channel"
  type        = string
}

variable "discord_github_admin_channel_webhook" {
  description = "Discord webhook URl for admin GitHub channel (same as public channel but for organisation instead of specific repos)"
  type        = string
}
