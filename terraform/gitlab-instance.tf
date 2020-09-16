# Create publicIP for Gitlab access
resource "scaleway_instance_ip" "gitlab" {}

resource "scaleway_instance_server" "gitlab" {
  type  = "DEV1-L"
  image = var.imageID

  ip_id             = scaleway_instance_ip.gitlab.id
  security_group_id = scaleway_instance_security_group.gitlab.id
  cloud_init = templatefile("${path.module}/files/bootsrap.tpl", {
    user     = var.db_user
    password = random_string.gitlab.result
    endpoint = scaleway_rdb_instance_beta.gitlab.endpoint_ip
    port     = scaleway_rdb_instance_beta.gitlab.endpoint_port
  })
}
