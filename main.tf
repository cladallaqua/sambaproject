provider "scaleway" {
  region = "${var.region}"
  organization = "${var.organization}"
  token        = "${var.scw_token}"
}

data "scaleway_image" "terraformwilliam" {
  architecture = "x86_64"
  name         = "Ubuntu Bionic"
}

resource "scaleway_server" "terraformwilliam" {
  name  = "terraformwilliam"
  image = "${data.scaleway_image.terraformwilliam.id}"
  type  = "START1-S"
}
resource "scaleway_ip" "ip" {
  server = "${scaleway_server.terraformwilliam.id}"
}


resource "scaleway_volume" "terraformwilliam" {
  name       = "terraformwilliamvolume"
  size_in_gb = 50
  type       = "l_ssd"
}
