resource "scaleway_instance_security_group" "gitlab" {
  inbound_default_policy  = "drop"
  outbound_default_policy = "accept"

  inbound_rule {
    action = "accept"
    port   = 22
    ip     = chomp(data.http.myip.body)
  }

  inbound_rule {
    action = "accept"
    port   = 80
    ip     = chomp(data.http.myip.body)
  }
}
