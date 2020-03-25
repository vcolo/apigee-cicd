terraform {
  backend "gcs" {
    bucket = "fca-apige-poc-tfstate"
    prefix = "env/prod"
  }
}
