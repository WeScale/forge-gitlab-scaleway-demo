# General
variable "region" {
  default = "fr-par"
}
variable "zone" {
  default = "fr-par-1"
}
variable "organization_id" {
  default = ""
}
# Kapsule
variable "kapsule_k8s_version" {
  default = "1.19.1"
}
variable "kapsule_node_type" {
  default = "GP1-XS"
}
variable "kapsule_pool_size" {
  default = 1
}
variable "kapsule_ingress" {
  default = "nginx"
}
# Database
variable "database_node_type" {
  default = "db-dev-s"
}
variable "database_postgres_version" {
  default = "PostgreSQL-12"
}
#Gitlab
variable "imageID" {
  default = "2ca64f53-b989-49f9-85f0-8ef6906cb946"
}
variable "adminIP" {
  default = "92.151.123.13"
}
variable "db_user" {
  default = "gitlab"
}

