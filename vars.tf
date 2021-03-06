variable "aws_region" { default = "us-west-2" }
variable "aws_profile" { default = "default" }

variable "cf_email" {}
variable "cf_token" {}
variable "cf_srv_email" {}
variable "cf_srv_token" {}
variable "cf_pro" { default = false }

variable "group" { default = "group" }
variable "name" { default = "server" }
variable "domain_list" { default = [] }
variable "domain_srv" { default = "example.com" }
variable "domain_is_sub" { default = false }
variable "server_ip" { default = "" }
variable "eip_name" { default = "default" }
variable "whitelist_ip" { default = true }
variable "cf_setting_override" { default = true }
variable "cf_proxied" { default = true }
variable "cf_always_https" { default = "on" }
variable "cf_page_rule_prio" { default = "3" }
variable "cf_freerules" { default = ["*.html*"] }
variable "cf_rule_action_cache" {
  type = "map"
  default = {
    cache_level    = "cache_everything"
    edge_cache_ttl = "7200"
  }
}
variable "cf_setting_pro" {
  type = "map"
  default  = { 
    polish = "lossless"
    webp   = "on"
    waf    = "on"
  }
}
