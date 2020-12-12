# Creamos un dominio nuevo

resource "digitalocean_domain" "proto" {
  name = "protoping.com"
}

# Add a record to the domain
resource "digitalocean_record" "proto" {
  domain = "${digitalocean_domain.pablokbs.name}"
  type   = "A"
  name   = "proto"
  ttl    = "10"
  value  = "${digitalocean_loadbalancer.public.ip}"
}

