resource "random_string" "gitlab" {
  length           = 16
  special          = true
  min_upper        = 1
  min_numeric      = 1
  min_special      = 1
  override_special = "_%@"
}

resource "scaleway_rdb_instance_beta" "gitlab" {
  name           = "gitlab-rds"
  node_type      = var.database_node_type
  engine         = var.database_postgres_version
  is_ha_cluster  = false
  disable_backup = true
  user_name      = var.db_user
  password       = random_string.gitlab.result
}
