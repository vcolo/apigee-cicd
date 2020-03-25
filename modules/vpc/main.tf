module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "~> 2.1"

  project_id   = "${var.project}"
  network_name = "${var.env}"

  subnets = [
    {
      subnet_name   = "${var.env}-subnet-01"
      subnet_ip     = "10.${var.env == "dev" ? 10 : 20}.10.0/24"
      subnet_region = "europe-west2"
    },
  ]

  secondary_ranges = {
    "${var.env}-subnet-01" = []
  }
}
