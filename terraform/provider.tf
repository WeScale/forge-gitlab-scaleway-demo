provider "scaleway" {
  region = var.region
  zone   = var.zone
}
terraform {
  backend "s3" {
    bucket                      = "terraform-states-wedemo"
    key                         = "terraform.tfstate"
    region                      = "fr-par"
    endpoint                    = "https://s3.fr-par.scw.cloud"
    skip_credentials_validation = true
    skip_region_validation      = true
  }
}
#provider "random" {}
