resource "digitalocean_domain" "fomantic-com" {
  name = "fomantic.com"
}

resource "digitalocean_record" "apex" {
  domain  = digitalocean_domain.fomantic-com
  type    = "A"
  name    = "@"
  value   = "178.128.35.93"
}