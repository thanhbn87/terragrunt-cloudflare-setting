terraform {
  backend "s3" {}
}

module "cloudflare_setting" {
  source = "git::https://github.com/thanhbn87/terraform-others.git//cloudflare?ref=tags/0.1.0"

  group  = "${var.group}"
  name   = "${var.name}"

  cf_email      = "${var.cf_email}"
  cf_token      = "${var.cf_token}"
  cf_srv_email  = "${var.cf_srv_email}"
  cf_srv_token  = "${var.cf_srv_token}"
  cf_pro        = "${var.cf_pro}"
  
  domain_srv    = "${var.domain_srv}"
  domain_list   = "${var.domain_list}"
  domain_is_sub = "${var.domain_is_sub}"
  cf_proxied    = "${var.cf_proxied}"
  whitelist_ip  = "${var.whitelist_ip}"
  server_ip     = "${var.server_ip}"
  
  cf_always_https      = "${var.cf_always_https}"
  cf_setting_override  = "${var.cf_setting_override}"
  cf_page_rule_prio    = "${var.cf_page_rule_prio}"
  cf_freerules         = "${var.cf_freerules}"
  cf_rule_action_cache = "${var.cf_rule_action_cache}"
  cf_setting_pro       = "${var.cf_setting_pro}"
}
